#import <Foundation/Foundation.h>
#import "generator.h"


@implementation Element
{
}

static NSMutableArray* array;
+ (NSMutableArray*) ignore
{
    if (array == nil)
    {
        array = [[NSMutableArray alloc] init];
        [array addObject:@"annotation"];
    }
    return array;
}

- (NSMutableArray*) m_children
{
    return children;
}

- (id) initWithParent:(Element*) parent andName:(NSString*) name
{
    self = [super init];
    children = [[NSMutableArray alloc] init];

    [ self setParent : parent ];
    [ self setTagName: name   ];

    if (parent) {
        if (![[Element ignore] containsObject:name]) {
            [[parent m_children] addObject:self];
        }
    }
    else {
        [ self setParent : self];
    }
    return self;
}

 - (NSArray*) children 
 {
    return children;
 }

@end

@implementation Generator
{
    NSXMLParser* parser;
    Element*     current;
}

- (void)parser:(NSXMLParser*)parser didStartElement:(NSString*)elementName namespaceURI:(NSString*)namespaceURI qualifiedName:(NSString*)qName attributes:(NSDictionary *) attributeDict
{
    current = [[Element alloc] initWithParent: current andName:elementName];
    for (NSString *attr in attributeDict) {
        [current setValue:[attributeDict objectForKey: attr] forKey:attr];
    }
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
     //   NSLog(@"%@", string);
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    current = [current parent];
}

- (void) parser:(NSXMLParser *)parser didStartMappingPrefix:(NSString *)prefix toURI:(NSString *)namespaceURI 
{
    NSLog (@"Start mapping %@ %@", prefix, namespaceURI);
}

- (void)parser:(NSXMLParser *)parser didEndMappingPrefix:(NSString *)prefix
{
    NSLog (@"End mapping %@", prefix);
}

- (id) initWithFile:(NSString*) filename
{
    self = [super init];

    current = nil;
    parser  = [[NSXMLParser alloc] initWithStream: [[NSInputStream alloc] initWithFileAtPath: filename]];

    [parser setShouldProcessNamespaces:TRUE];
    [parser setShouldReportNamespacePrefixes:TRUE];

    [parser setDelegate: self];

    return self;
}

- (void) parse
{
    [parser parse];
}

- (BOOL) forElement:(Element*) elem areChildren:(NSString*) list
{
    BOOL result = false;
    NSArray *names = [list componentsSeparatedByString:@","];
    for (Element *e in [elem children]) {
        result = TRUE;
        bool found = FALSE;
        for (NSString* n in names) {
            found = found || [[e tagName] isEqual:n];
        }
        if (!found) return FALSE;
    }
    return result;
}

static const char* prefix = "EWS";

- (void) patternString:(Element*) elem
{
    char const* returnType = "NSString *";
    NSString* pattern = nil;

    Element* child = [[elem children] objectAtIndex: 0];
    for (Element *e in [child children])
    {
        pattern = [e value];
    }

    const char* name = [[elem name] UTF8String];

    char filename[1024];
    sprintf (filename, "types/%s%s.h", prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"../handlers/%sSimpleTypeHandler.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** SimpleType: %s is a regex %s string */\n", name, [pattern UTF8String]);

    fprintf (file, "@interface %s%s : %sSimpleTypeHandler \n\n", prefix, name, prefix);
   
    fprintf (file, "/** Register a handler to parse %s */\n", name);
    fprintf (file, "+ (void) initialize;\n\n");

    fprintf (file, "/** Initialize the handler */\n");
    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (id) initWithClass:(Class) cls;\n\n");

    fprintf (file, "/** Construct the object */\n");
    fprintf (file, "- (%s) construct;\n\n", returnType);

    fprintf (file, "/** Process the characters */\n");
    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*)s;\n\n", returnType, returnType);
    
    fprintf (file, "/** Write to the buffer the string value */\n");
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object;\n\n", returnType);
    
    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "types/%s%s.m", prefix, name);
    
    file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"%s%s.h\"", prefix, name);
    fprintf (file, "\n");
    fprintf (file, "@implementation %s%s /* SimpleType */\n\n", prefix, name);

    fprintf (file, "static NSString* pattern = nil;\n\n");
    
    fprintf (file, "+ (void) initialize\n");
    fprintf (file, "{\n");
    fprintf (file, "    pattern = @\"%s\";\n", [pattern UTF8String]);
    fprintf (file, "    [[[%s%s alloc] init] register];\n", prefix, name);
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) init\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:[%s%s class]];\n", prefix, name);
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) initWithClass:(Class) cls\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:cls];\n");
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (%s) construct\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    return [[NSString alloc] init];\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*) s\n", returnType, returnType);
    fprintf (file, "{\n");
    fprintf (file, "    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];\n");
    fprintf (file, "    return [s length] > 0 ? s : obj;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (BOOL) string:(NSString*) str hasPattern:(NSString*) p\n");
    fprintf (file, "{\n");
    fprintf (file, "    return TRUE;\n");
    fprintf (file, "}\n\n");
   
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    NSString* obj = ((NSString*) object);\n");
    fprintf (file, "    NSAssert([self string:obj hasPattern:pattern], @\"String should have a pattern\");\n");
    fprintf (file, "    [buffer appendString:obj];\n"); 
    fprintf (file, "}\n\n");
    
    fprintf (file, "@end\n\n");
    fclose (file);
}

-(void) simpleString:(Element*) elem
{
    char const* returnType = "NSString *";
    const char* name = [[elem name] UTF8String];

    char filename[1024];
    sprintf (filename, "types/%s%s.h", prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"../handlers/%sSimpleTypeHandler.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** SimpleType: %s is string  */\n", name);

    fprintf (file, "@interface %s%s : %sSimpleTypeHandler \n\n", prefix, name, prefix);
   
    fprintf (file, "/** Register a handler to parse %s */\n", name);
    fprintf (file, "+ (void) initialize;\n\n");

    fprintf (file, "/** Initialize the handler */\n");
    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (id) initWithClass:(Class) cls;\n\n");

    fprintf (file, "/** Process the characters */\n");
    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*)s;\n\n", returnType, returnType);
    
    fprintf (file, "/** Write to the buffer the string value */\n");
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object;\n\n", returnType);
    
    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "types/%s%s.m", prefix, name);
    
    file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"%s%s.h\"", prefix, name);
    fprintf (file, "\n");
    fprintf (file, "@implementation %s%s /* SimpleType */\n\n", prefix, name);

    
    fprintf (file, "+ (void) initialize\n");
    fprintf (file, "{\n");
    fprintf (file, "    [[[%s%s alloc] init] register];\n", prefix, name);
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) init\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:[%s%s class]];\n", prefix, name);
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) initWithClass:(Class) cls\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:cls];\n");
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (%s) construct\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    return [[NSString alloc] init];\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*) s\n", returnType, returnType);
    fprintf (file, "{\n");
    fprintf (file, "    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];\n");
    fprintf (file, "    return [s length] > 0 ? s : obj;\n");
    fprintf (file, "}\n\n");
   
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    NSString* obj = ((NSString*) object);\n");
    fprintf (file, "    [buffer appendString:obj];\n"); 
    fprintf (file, "}\n\n");
    
    fprintf (file, "@end\n\n");
    fclose (file);
}

- (void) simpleMinMaxInt:(Element*) elem
{
    char const* returnType = "NSNumber *";
    NSString* min = nil;
    NSString* max = nil;

    Element* child = [[elem children] objectAtIndex: 0];
    for (Element *e in [child children])
    {
        min = [[e tagName] isEqual:@"minInclusive"] ? [e value] : min;
        max = [[e tagName] isEqual:@"maxInclusive"] ? [e value] : max;
    }

    const char* name = [[elem name] UTF8String];

    char filename[1024];
    sprintf (filename, "types/%s%s.h", prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"../handlers/%sSimpleTypeHandler.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** SimpleType: %s is a int between [%s, %s] */\n", name, min ? [min UTF8String] : "-Inf", max ? [max  UTF8String] : "+Inf");

    fprintf (file, "@interface %s%s : %sSimpleTypeHandler \n\n", prefix, name, prefix);
   
    fprintf (file, "/** Register a handler to parse %s */\n", name);
    fprintf (file, "+ (void) initialize;\n\n");

    fprintf (file, "/** Initialize the handler */\n");
    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (id) initWithClass:(Class) cls;\n\n");

    fprintf (file, "/** Process the characters */\n");
    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*)s;\n\n", returnType, returnType);
    
    fprintf (file, "/** Write to the buffer the string value */\n");
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object;\n\n", returnType);
    
    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "types/%s%s.m", prefix, name);
    
    file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"%s%s.h\"", prefix, name);
    fprintf (file, "\n");
    fprintf (file, "@implementation %s%s /* SimpleType */\n\n", prefix, name);

    if (min) fprintf (file, "static int minInclusive = %s;\n\n", [min UTF8String]);
    if (max) fprintf (file, "static int maxInclusive = %s;\n\n", [max UTF8String]);

    
    fprintf (file, "+ (void) initialize\n");
    fprintf (file, "{\n");
    fprintf (file, "    [[[%s%s alloc] init] register];\n", prefix, name);
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) init\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:[%s%s class]];\n", prefix, name);
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) initWithClass:(Class) cls\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:cls];\n");
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (%s) construct\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    return nil;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*) s\n", returnType, returnType);
    fprintf (file, "{\n");
    fprintf (file, "    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];\n");
    fprintf (file, "    return [s length] > 0 ? [NSNumber numberWithInteger:[s integerValue]] : obj;\n");
    fprintf (file, "}\n\n");
   
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    NSNumber* obj = ((NSNumber*) object);\n");
    fprintf (file, "    NSInteger val = [obj integerValue];\n");
    if (min) fprintf (file, "    NSAssert(val >= minInclusive, @\"Value is smaller than min\");\n");
    if (max) fprintf (file, "    NSAssert(val <= maxInclusive, @\"Value is bigger than min\");\n");
    fprintf (file, "    [buffer appendFormat:@\"%%ld\", val];\n"); 
    fprintf (file, "}\n\n");
    
    fprintf (file, "@end\n\n");
    fclose (file);
}
   

- (void) simpleMinLengthString:(Element*) elem
{
    const char* returnType = "NSString *";
    NSString* min = nil;

    Element* child = [[elem children] objectAtIndex: 0];
    for (Element *e in [child children])
    {
        min = [e value];
    }

    const char* name = [[elem name] UTF8String];

    char filename[1024];
    sprintf (filename, "types/%s%s.h", prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"../handlers/%sSimpleTypeHandler.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** SimpleType: %s is a min length string of size %s */\n", name, [min UTF8String]);

    fprintf (file, "@interface %s%s : %sSimpleTypeHandler \n\n", prefix, name, prefix);
   
    fprintf (file, "/** Register a handler to parse %s */\n", name);
    fprintf (file, "+ (void) initialize;\n\n");

    fprintf (file, "/** Initialize the handler */\n");
    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (id) initWithClass:(Class) cls;\n\n");

    fprintf (file, "/** Process the characters */\n");
    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*)s;\n\n", returnType, returnType);
    
    fprintf (file, "/** Write to the buffer the string value */\n");
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object;\n\n", returnType);
    
    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "types/%s%s.m", prefix, name);
    
    file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"%s%s.h\"", prefix, name);
    fprintf (file, "\n");
    fprintf (file, "@implementation %s%s /* SimpleType */\n\n", prefix, name);

    fprintf (file, "static int minLength = %s;\n\n", [min UTF8String]);

    
    fprintf (file, "+ (void) initialize\n");
    fprintf (file, "{\n");
    fprintf (file, "    [[[%s%s alloc] init] register];\n", prefix, name);
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) init\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:[%s%s class]];\n", prefix, name);
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) initWithClass:(Class) cls\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:cls];\n");
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (%s) construct\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    return [[NSString alloc] init];\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*) s\n", returnType, returnType);
    fprintf (file, "{\n");
    fprintf (file, "    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];\n");
    fprintf (file, "    return [s length] > 0 ? s : obj;\n");
    fprintf (file, "}\n\n");
   
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    NSString* obj = ((NSString*) object);\n");
    fprintf (file, "    NSAssert([obj length] >= minLength, @\"String should have a min length\");\n");
    fprintf (file, "    [buffer appendString:obj];\n"); 
    fprintf (file, "}\n\n");
    
    fprintf (file, "@end\n\n");
    fclose (file);
}

- (void) simpleEnumeratedString:(Element*) elem
{
    const char* returnType = "NSString *";
    Element* child = [[elem children] objectAtIndex: 0];

    const char* name = [[elem name] UTF8String];

    char filename[1024];
    sprintf (filename, "types/%s%s.h", prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"../handlers/%sSimpleTypeHandler.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** SimpleType: %s can be one of the following:\n", name);

    int idx = 1;
    for (Element *e in [child children])
    {
        const char* v = [[e value] UTF8String];
        fprintf (file, " *       %d %s\n", idx++, v);
    }
    fprintf (file, " */\n");
    fprintf (file, "@interface %s%s : %sSimpleTypeHandler \n\n", prefix, name, prefix);
   
    fprintf (file, "/** Register a handler to parse %s */\n", name);
    fprintf (file, "+ (void) initialize;\n\n");

    fprintf (file, "/** Initialize the handler */\n");
    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (id) initWithClass:(Class) cls;\n\n");

    fprintf (file, "/** Process the characters */\n");
    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*)s;\n\n", returnType, returnType);
    
    fprintf (file, "/** Write to the buffer the string value */\n");
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object;\n\n", returnType);
    

    fprintf (file, "\n/* Valid values */\n");
    for (Element *e in [child children])
    {
        const char* v = [[[e value] stringByReplacingOccurrencesOfString:@":" withString:@"_"] UTF8String];
        fprintf (file, "+ (NSString *) %s;\n", v);
    }
    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "types/%s%s.m", prefix, name);
    
    file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"%s%s.h\"", prefix, name);
    fprintf (file, "\n");
    fprintf (file, "@implementation %s%s /* SimpleType */\n\n", prefix, name);

    fprintf (file, "static NSSet* enumerations = nil;\n\n");

    
    fprintf (file, "+ (void) initialize\n");
    fprintf (file, "{\n");
    fprintf (file, "    enumerations = [NSSet setWithObjects:");
    for (Element *e in [child children])
    {
        const char* v = [[[e value] stringByReplacingOccurrencesOfString:@":" withString:@"_"] UTF8String];
        fprintf (file, "\n                                         [%s%s %s], ", prefix, name, v);
    }
    fprintf (file, "nil];\n");
    fprintf (file, "    [[[%s%s alloc] init] register];\n", prefix, name);
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) init\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:[%s%s class]];\n", prefix, name);
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) initWithClass:(Class) cls\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:cls];\n");
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*) s\n", returnType, returnType);
    fprintf (file, "{\n");
    fprintf (file, "    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];\n");
    fprintf (file, "    return [enumerations containsObject:s] ? [enumerations member:s] : obj;\n");
    fprintf (file, "}\n\n");
   
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    NSString* obj = ((NSString*) object);\n");
    fprintf (file, "    NSAssert([enumerations containsObject:obj], @\"String is a enumerated list\");\n");
    fprintf (file, "    [buffer appendString:((NSString*) object)];\n"); 
    fprintf (file, "}\n\n");

    for (Element *e in [child children])
    {
        const char* v = [[[e value] stringByReplacingOccurrencesOfString:@":" withString:@"_"] UTF8String];
        fprintf (file, "+ (NSString *) %s { return @\"%s\"; }\n", v, [[e value] UTF8String]);
    }
    
    fprintf (file, "@end\n\n");
    fclose (file);
}

-(void) extendNonEmptyStringType:(Element*) elem
{
    const char* name = [[elem name] UTF8String];

    char filename[1024];
    sprintf (filename, "types/%s%s.h", prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"%sNonEmptyStringType.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** SimpleType: %s is string  */\n", name);

    fprintf (file, "@interface %s%s : %sNonEmptyStringType \n\n", prefix, name, prefix);
   
    fprintf (file, "/** Register a handler to parse %s */\n", name);
    fprintf (file, "+ (void) initialize;\n\n");

    fprintf (file, "/** Initialize the handler */\n");
    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (id) initWithClass:(Class) cls;\n\n");

    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "types/%s%s.m", prefix, name);
    
    file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"%s%s.h\"", prefix, name);
    fprintf (file, "\n");
    fprintf (file, "@implementation %s%s /* SimpleType */\n\n", prefix, name);

    
    fprintf (file, "+ (void) initialize\n");
    fprintf (file, "{\n");
    fprintf (file, "    [[[%s%s alloc] init] register];\n", prefix, name);
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) init\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:[%s%s class]];\n", prefix, name);
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) initWithClass:(Class) cls\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super initWithClass:cls];\n");
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "@end\n\n");
    fclose (file);
}

- (BOOL) isSimpleType:(Element*) e
{
    return [[e tagName] isEqual:@"simpleType"];
}

- (void) generateForSimpleType
{
    NSString* simpleType = @"simpleType";

    for (Element* elem in [current children])
    {
        if ([[elem tagName] isEqual:simpleType]) {
            if ([[elem name] isEqual:@"PropertyTagType"] || [[elem name] isEqual:@"ReminderMinutesBeforeStartType"]) 
            {
                [elem setResultType:@"NSNumber*"];
            }
            else if ([[elem name] isEqual:@"DaysOfWeekType"] || [[elem name] isEqual:@"FreeBusyViewType"])
            {
                [elem setResultType:@"NSMutableArray<NSString*>*"];
            }
            else if ([[elem children] count] == 1)
            {
                Element* child = [[elem children] objectAtIndex: 0];
                if ([[child tagName] isEqual:@"restriction"]) {
                    if ([[child base] isEqual:@"xs:string"]) {
                        if ([[child children] count] == 0) 
                        {
                            [self simpleString:elem];
                            [elem setResultType:@"NSString*"];
                        }
                        else if ([self forElement:child areChildren:@"enumeration"]) {

                            [self simpleEnumeratedString:elem];
                            [elem setResultType:@"NSString*"];
                        }
                        else if ([self forElement:child areChildren:@"minLength"]) {
                            [self simpleMinLengthString:elem];
                            [elem setResultType:@"NSString*"];
                        }
                        else if ([self forElement:child areChildren:@"pattern"]) {
                            [self patternString:elem];
                            [elem setResultType:@"NSString*"];
                        }
                        else NSLog(@"string type is not enumeration %@ %@", [elem tagName], [elem name]);
                    }
                    else if ([[child base] isEqual:@"xs:int"]) {
                        if ([self forElement:child areChildren:@"minInclusive,maxInclusive"]) {
                            [self simpleMinMaxInt:elem];
                            [elem setResultType:@"NSNumber*"];
                        }
                        else NSLog (@"unknown int type %@ %@", [elem tagName], [elem name]);
                    }
                    else if ([[child base] isEqual:@"t:NonEmptyStringType"]) {
                        if ([[child children] count] == 0)
                        {
                            [self extendNonEmptyStringType:elem];
                            [elem setResultType:@"NSString*"];
                        }
                        else NSLog (@"extension has children string %@ %@", [elem tagName], [elem name]);
                    }
                    else NSLog(@"restriction is not of type string %@ %@", [elem tagName], [elem name]);
                }
                else NSLog(@"restriction is not the child %@ %@", [elem tagName], [elem name]);
            }
            else {
                NSLog(@"Unprocessed %@ %@", [elem tagName], [elem name]);
            }
        }
    }
}

- (BOOL) isResolved:(Element*) elem
{
    return [elem resultType] ? TRUE : FALSE;
}

- (BOOL) isArrayType:(Element*) elem
{
    return [self isSimpleArrayType:elem] || [self isChoiceArrayType:elem];
}

- (BOOL) isChoiceArrayType:(Element*) elem
{
    if (![[elem tagName] isEqual:@"complexType"]) return false;
    if ([[elem children] count] != 1) return false;

    Element* child = [[elem children] objectAtIndex: 0];

    if (![[child tagName] isEqual:@"choice"]) return false;

    if (![self forElement:child areChildren:@"element"]) return false;
    if ([[child children] count] != 1) return false;

    for (Element *e in [child children]) {
        if ([[e children] count] != 0) return false;
        if ([e maxOccurs] && [[e maxOccurs] isEqual:@"unbounded"]) return true;
        if (![self objectType:[e type]]) return false;
    }
    return false;
}

- (BOOL) isSimpleArrayType:(Element*) elem
{
    if (![[elem tagName] isEqual:@"complexType"]) return false;
    if ([[elem children] count] != 1) return false;

    Element* child = [[elem children] objectAtIndex: 0];

    if (![[child tagName] isEqual:@"sequence"]) return false;

    if (![self forElement:child areChildren:@"element"]) return false;
    if ([[child children] count] != 1) return false;

    for (Element *e in [child children]) {
        if ([[e children] count] != 0) return false;
        if ([e maxOccurs] && [[e maxOccurs] isEqual:@"unbounded"]) return true;
        if (![self objectType:[e type]]) return false;
    }
    return false;
}

- (BOOL) isSimpleStruct:(Element*) elem
{
    if ([self isArrayType:elem]) return false;
    if (![[elem tagName] isEqual:@"complexType"]) return false;
    if ([[elem children] count] == 0) return false;

    Element* child = [[elem children] objectAtIndex: 0];
    if (![[child tagName] isEqual:@"sequence"]) return false;
    if (![self forElement:child areChildren:@"element"]) return false;

    for (int i = 1; i < [[elem children] count]; i++)
    {
        Element* e = [[elem children] objectAtIndex:i];
        if (![[e tagName] isEqual:@"attribute"])
            return false;
        if (![self objectType:[e type]]) return false;
    }
    for (Element *e in [child children]) {
        if ([[e children] count] != 0) return false;
        if (![self objectType:[e type]]) return false;
    }
    return true;
}

- (NSString*) pad:(NSString*)s toLength:(int) l
{
    while ([s length] < l)
    {
        s = [s stringByAppendingString:@" "];
    }
    return s;
}

- (NSString*) trimTypeName:(NSString*)s
{
    if ([s hasPrefix:@"t:"]) {
        return [s stringByReplacingOccurrencesOfString:@"t:" withString:@"EWS"];
    }
    return s;
}

-(void) generateForSimpleStructForElement:(Element*) elem
{
    Element* sequence = [[elem children] objectAtIndex: 0];

    const char* name = [[elem name] UTF8String];

    char filename[1024];
    sprintf (filename, "types/%s%s.h", prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "\n\n\n");
    NSMutableSet<NSString*>* includes = [[NSMutableSet<NSString*> alloc] init];
    for  (Element* e in [sequence children]) {
        [includes addObject:[self includeFile:[e type]]];
    }
    for (Element* e in [elem children]) {
        if ([[e tagName] isEqual:@"attribute"])
        {
            [includes addObject:[self includeFile:[e type]]];
        }
    }
    for  (NSString* i in includes) {
        fprintf (file, "#import \"%s\"\n", [i UTF8String]);
    }
    fprintf (file, "\n\n\n");
    fprintf (file, "/* %s */\n", name);

    fprintf (file, "@interface %s%s : NSObject\n\n", prefix, name);


    [elem setResultType:[@"EWS" stringByAppendingString:[[elem name] stringByAppendingString:@"*"]]];
   
    fprintf (file, "+ (void) initialize;\n\n");

    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (Class) handlerClass;\n");
    fprintf (file, "- (NSString*) description;\n\n");

    unsigned int tlength = 8;
    unsigned int nlength = 5;
    // Attributes
    for (int i = 1; i < [[elem children] count]; i++)
    {
            Element* e = [[elem children] objectAtIndex: i];
            tlength = [[self objectType:[e type]] length] > tlength ? [[self objectType:[e type]] length] : tlength;
            nlength = [[e name] length] > nlength ? [[e name] length] : nlength;
    }
    for  (Element* e in [sequence children])
    {
        nlength = [[e name] length] > nlength ? [[e name] length] : nlength;
        if (![e maxOccurs] || [[e maxOccurs] isEqual:@"1"]) 
        {
            tlength = [[self objectType:[e type]] length] > tlength ? [[self objectType:[e type]] length] : tlength;
        }
        else
        {
            tlength = ([[self objectType:[e type]] length] + 17) > tlength ? ([[self objectType:[e type]] length] + 17) : tlength;
        }
    }

    for (int i = 1; i < [[elem children] count]; i++)
    {
            Element* e = [[elem children] objectAtIndex: i];
            NSString* t = [self objectType:[e type]];

            if ([t hasPrefix:@"NS"])
                fprintf (file, "@property (retain) %s %s  /* %s */;\n", [[self pad:[self objectType:[e type]] toLength:tlength] UTF8String], [[self pad:[self propertyName:[e name]] toLength:nlength] UTF8String], [[self trimTypeName:[e type]] UTF8String]);
            else
                fprintf (file, "@property (retain) %s %s;\n", [[self pad:[self objectType:[e type]] toLength:tlength] UTF8String], [[self propertyName:[e name]] UTF8String]);
    }
    for  (Element* e in [sequence children])
    {
        NSString* t = [self objectType:[e type]];

        if (![e maxOccurs] || [[e maxOccurs] isEqual:@"1"]) {
            if ([t hasPrefix:@"NS"])
                fprintf (file, "@property (retain) %s %s  /* %s */;\n", [[self pad:[self objectType:[e type]] toLength:tlength] UTF8String], [[self pad:[self propertyName:[e name]] toLength:nlength] UTF8String], [[self trimTypeName:[e type]] UTF8String]);
            else
                fprintf (file, "@property (retain) %s %s;\n", [[self pad:[self objectType:[e type]] toLength:tlength] UTF8String], [[self propertyName:[e name]] UTF8String]);
        }
        else if ([[e maxOccurs] isEqual:@"unbounded"])
        {
            NSString* str = [[NSString alloc] initWithFormat:@"NSMutableArray<%@>*", [self objectType:[e type]]];
            if ([t hasPrefix:@"NS"])
                fprintf (file, "@property (retain) %s %s /* %s */;\n", [[self pad:str toLength:tlength] UTF8String], [[self pad:[self propertyName:[e name]] toLength:nlength] UTF8String], [[self trimTypeName:[e type]] UTF8String]);
            else
                fprintf (file, "@property (retain) %s %s;\n", [[self pad:str toLength:tlength] UTF8String], [[self propertyName:[e name]] UTF8String]);
        }
        else
        {
            NSLog (@"maxOccurs is %@", [e maxOccurs]);
            exit (-1);
        }
    }

    fprintf (file, "\n\n");
    for  (Element* e in [sequence children])
    {
        if ([e maxOccurs] && [[e maxOccurs] isEqual:@"unbounded"])
        {
            fprintf (file, "- (void) add%s:(%s) elem;\n", [[e name] UTF8String], [[self objectType:[e type]] UTF8String]);
        }
    }

    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "types/%s%s.m", prefix, name);
    
    file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"../handlers/%sObjectTypeHandler.h\"\n\n", prefix);


    fprintf (file, "\n#import \"%s%s.h\"\n", prefix, name);
    fprintf (file, "\n\n");
    fprintf (file, "@implementation %s%s \n\n", prefix, name);

    
    fprintf (file, "+ (void) initialize\n");
    fprintf (file, "{\n");
    fprintf (file, "    %sObjectTypeHandler* handler = [[%sObjectTypeHandler alloc] initWithClass:[%s%s class]];\n\n", prefix, prefix, prefix, name);

    for (int i = 1; i < [[elem children] count]; i++)
    {
        Element* e = [[elem children] objectAtIndex: i];

        bool required = [e use] && [[e use] isEqual:@"required"];
        fprintf (file, "    [handler property    : @\"%s\"\n", [[self propertyName:[e name]] UTF8String]);
        fprintf (file, "             isRequired  : %s\n", required ? "TRUE" : "FALSE");
        fprintf (file, "             withAttrTag : @\"%s\"\n", [[e name] UTF8String]);
        fprintf (file, "             withHandler : [%s%s class]];\n\n", prefix, [[self handler:[e type]] UTF8String]);
    }

    for  (Element* e in [sequence children])
    {
        bool required = ![e minOccurs] || ![[e minOccurs] isEqual:@"0"];
        if (![e maxOccurs] || [[e maxOccurs] isEqual:@"1"]) {
            fprintf (file, "    [handler property   : @\"%s\"\n", [[self propertyName:[e name]] UTF8String]);
            fprintf (file, "             isRequired : %s\n", required ? "TRUE" : "FALSE");
            fprintf (file, "             withXmlTag : @\"%s\"\n", [[e name] UTF8String]);
            fprintf (file, "             withHandler: [%s%s class]];\n\n", prefix, [[self handler:[e type]] UTF8String]);
        }
        else if ([[e maxOccurs] isEqual:@"unbounded"])
        {
            fprintf (file, "    [handler listProperty : @\"%s\"\n", [[self propertyName:[e name]] UTF8String]);
            fprintf (file, "             isNonEmpty   : %s\n", required ? "TRUE" : "FALSE");
            fprintf (file, "             useSelector  : @\"add%s\"\n", [[e name] UTF8String]);
            fprintf (file, "             withXmlTag   : @\"%s\"\n", [[e name] UTF8String]);
            fprintf (file, "             withHandler  : [%s%s class]];\n\n", prefix, [[self handler:[e type]] UTF8String]);
        }
        else
        {
            NSLog (@"maxOccurs is %@", [e maxOccurs]);
            exit (-1);
        }
    }
    fprintf (file, "    [handler register];\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) init\n");
    fprintf (file, "{\n");
    fprintf (file, "    return [super init];\n");
    fprintf (file, "}\n\n");
    fprintf (file, "- (Class) handlerClass\n");
    fprintf (file, "{\n");
    fprintf (file, "    return [%s%s class];\n", prefix, name);
    fprintf (file, "}\n\n");

    fprintf (file, "- (NSString*) description\n");
    fprintf (file, "{\n");
    fprintf (file, "    return [NSString stringWithFormat:@\"%s:", name);
    for (int i = 1; i < [[elem children] count]; i++)
    {
        Element* e = [[elem children] objectAtIndex: i];
        fprintf (file, " %s=%%@", [[e name] UTF8String]);
    }
    for  (Element* e in [sequence children])
    {
        fprintf (file, " %s=%%@", [[e name] UTF8String]);
    }
    fprintf (file, "\"");
    for (int i = 1; i < [[elem children] count]; i++)
    {
        Element* e = [[elem children] objectAtIndex: i];
        fprintf (file, ", _%s", [[self propertyName:[e name]] UTF8String]);
    }
    for  (Element* e in [sequence children])
    {
        fprintf (file, ", _%s", [[self propertyName:[e name]] UTF8String]);
    }
    fprintf (file, "];\n");
    fprintf (file, "}\n\n");

    fprintf (file, "@end\n\n");
    fclose (file);
}

- (NSString*) propertyName:(NSString*) name
{
    NSString* first = [[name substringToIndex:1] lowercaseString];
    NSString* rest  = [name substringFromIndex:1];


    return [first stringByAppendingString:rest];
}

- (void) generateForSimpleStruct
{
    for (Element* elem in [current children])
    {
        if ([self isSimpleStruct:elem]) {
            NSLog(@"Simple struct %@ %@",  [elem tagName], [elem name]);
            [self generateForSimpleStructForElement:elem];
        }
    }
}

- (NSString*) objectType:(NSString*)nm
{
    if ([nm hasPrefix:@"xs:"])
    {
        if ([nm isEqual:@"xs:string"])        return @"NSString*";
        if ([nm isEqual:@"xs:dateTime"])      return @"NSString*";
        if ([nm isEqual:@"xs:date"])          return @"NSString*";
        if ([nm isEqual:@"xs:anyURI"])        return @"NSString*";
        if ([nm isEqual:@"xs:base64Binary"])  return @"NSData*";
        if ([nm isEqual:@"xs:duration"])      return @"NSString*";
        if ([nm isEqual:@"xs:language"])      return @"NSString*";
        if ([nm isEqual:@"xs:time"])          return @"NSString*";
        if ([nm isEqual:@"xs:short"])         return @"NSNumber*";
        if ([nm isEqual:@"xs:int"])           return @"NSNumber*";
        if ([nm isEqual:@"xs:double"])        return @"NSNumber*";
        if ([nm isEqual:@"xs:boolean"])       return @"NSNumber*";
        if ([nm isEqual:@"xs:unsignedInt"])   return @"NSNumber*";
        if ([nm isEqual:@"xs:unsignedShort"]) return @"NSNumber*";


        NSLog(@"Unknown type %@", nm);
    }

    if ([nm hasPrefix:@"t:"])
    {
        nm = [nm stringByReplacingOccurrencesOfString:@"t:" withString:@""];

        for (Element* elem in [current children])
        {
            if ([[elem name] isEqual:nm])
            {
                return [elem resultType];
            }
        }
        NSLog(@"Unknown type %@", nm);
    }
    NSLog(@"Unknown type %@", nm);
    return nil;
}

- (NSString*) includeFile:(NSString*)nm
{
    if ([nm hasPrefix:@"xs:"])
    {
        if ([nm isEqual:@"xs:string"])        return @"../handlers/EWSStringTypeHandler.h";
        if ([nm isEqual:@"xs:int"])           return @"../handlers/EWSIntegerTypeHandler.h";
        if ([nm isEqual:@"xs:boolean"])       return @"../handlers/EWSBooleanTypeHandler.h";
        if ([nm isEqual:@"xs:dateTime"])      return @"../handlers/EWSDateTimeTypeHandler.h";
        if ([nm isEqual:@"xs:date"])          return @"../handlers/EWSDateTypeHandler.h";
        if ([nm isEqual:@"xs:anyURI"])        return @"../handlers/EWSAnyUriTypeHandler.h";
        if ([nm isEqual:@"xs:base64Binary"])  return @"../handlers/EWSBase64BinaryTypeHandler.h";
        if ([nm isEqual:@"xs:double"])        return @"../handlers/EWSDoubleTypeHandler.h";
        if ([nm isEqual:@"xs:duration"])      return @"../handlers/EWSDurationTypeHandler.h";
        if ([nm isEqual:@"xs:language"])      return @"../handlers/EWSLanguageTypeHandler.h";
        if ([nm isEqual:@"xs:short"])         return @"../handlers/EWSShortTypeHandler.h";
        if ([nm isEqual:@"xs:time"])          return @"../handlers/EWSTimeTypeHandler.h";
        if ([nm isEqual:@"xs:unsignedInt"])   return @"../handlers/EWSUnsignedIntTypeHandler.h";
        if ([nm isEqual:@"xs:unsignedShort"]) return @"../handlers/EWSUnsignedShortTypeHandler.h";

        NSLog(@"Unknown type %@", nm);
        exit(-1);
    }

    if ([nm hasPrefix:@"t:"])
    {
        nm = [nm stringByReplacingOccurrencesOfString:@"t:" withString:@""];

        for (Element* elem in [current children])
        {
            if ([[elem name] isEqual:nm])
            {
                NSString * r = @"EWS";

                return [[r stringByAppendingString:[elem name]] stringByAppendingString:@".h"];
            }
        }
        NSLog(@"Unknown type %@", nm);
        assert (false);
    }
    NSLog(@"Unknown type %@", nm);
    exit(-1);

    return nil;
}

- (NSString*) handler:(NSString*)nm
{
    if ([nm hasPrefix:@"xs:"])
    {
        if ([nm isEqual:@"xs:string"])        return @"StringTypeHandler";
        if ([nm isEqual:@"xs:int"])           return @"IntegerTypeHandler";
        if ([nm isEqual:@"xs:boolean"])       return @"BooleanTypeHandler";
        if ([nm isEqual:@"xs:dateTime"])      return @"DateTimeTypeHandler";
        if ([nm isEqual:@"xs:date"])          return @"DateTypeHandler";
        if ([nm isEqual:@"xs:anyURI"])        return @"UriTypeHandler";
        if ([nm isEqual:@"xs:base64Binary"])  return @"Base64BinaryTypeHandler";
        if ([nm isEqual:@"xs:double"])        return @"DoubleTypeHandler";
        if ([nm isEqual:@"xs:duration"])      return @"DurationTypeHandler";
        if ([nm isEqual:@"xs:language"])      return @"LanguageTypeHandler";
        if ([nm isEqual:@"xs:short"])         return @"ShortTypeHandler";
        if ([nm isEqual:@"xs:time"])          return @"TimeTypeHandler";
        if ([nm isEqual:@"xs:unsignedInt"])   return @"UnsignedIntTypeHandler";
        if ([nm isEqual:@"xs:unsignedShort"]) return @"UnsignedShortTypeHandler";

        NSLog(@"Unknown type %@", nm);
        exit(-1);
    }

    if ([nm hasPrefix:@"t:"])
    {
        nm = [nm stringByReplacingOccurrencesOfString:@"t:" withString:@""];

        for (Element* elem in [current children])
        {
            if ([[elem name] isEqual:nm])
            {
                return [elem name];
            }
        }
        NSLog(@"Unknown type %@", nm);
        assert (false);
    }
    NSLog(@"Unknown type %@", nm);
    exit(-1);

    return nil;
}

- (int) resolved
{
    int result = 0;
    for (Element* elem in [current children])
    {
        if ([self isResolved:elem]) result++;
    }
    return result;
}

- (void) generate
{
    [self generateForSimpleType];

    while (TRUE)
    {
        int r = [self resolved];

        [self generateForSimpleStruct];

        if (r == [self resolved])
            break;
    }

/*
    for (Element* elem in [current children])
    {
        if ([[elem tagName] isEqual:@"complexType"] && ![self isResolved:elem])
        {
            NSLog(@"Fix %@", [elem name]);
            exit (-1);
        }
    }
*/
}

@end


