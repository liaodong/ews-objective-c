#import <Foundation/Foundation.h>
#import "generator.h"

@interface Predicate : NSObject
{
}
- (id) init;
@end

@implementation Predicate
-(id) init { return self = [super init]; }
@end

@interface ListPredicate : Predicate
{ 
}
@property (retain) NSMutableArray* clauses;
- (id) init;
- (void) addObject:(Predicate*) pred;
@end
@implementation ListPredicate
- (id) init
{
    self = [super init];
    [self setClauses:[[NSMutableArray alloc] init]];
    return self;
}
- (void) addObject:(Predicate*) pred
{
    [[self clauses] addObject:pred];
}
@end
@interface OrPredicate : ListPredicate
{}
-(id) init;
@end
@implementation OrPredicate
{}
-(id) init { return self = [super init]; }
@end
@interface ExclusiveOrPredicate : ListPredicate
{}
-(id) init;
-(void) canHaveAllNull;
@end
@implementation ExclusiveOrPredicate
{}
-(id) init { return self = [super init]; }
-(void) canHaveAllNull {}
@end
@interface AndPredicate : ListPredicate
{}
-(id) init;
@end
@implementation AndPredicate
{}
-(id) init { return self = [super init]; }
@end
@interface ElementPredicate : Predicate
{
}
@property (retain) Element* element;
- (id) initWithElement:(Element*) e;
@end
@implementation ElementPredicate
- (id) initWithElement:(Element*) e
{
    self = [super init];
    [self setElement:e];
    return self;
}
@end
@interface NotNullPredicate : ElementPredicate
{}
- (id) initWithElement:(Element*) e;
@end
@implementation NotNullPredicate
- (id) initWithElement:(Element*) e { return self = [super initWithElement:e]; }
@end
@interface NotEmptyPredicate : ElementPredicate
{}
- (id) initWithElement:(Element*) e;
@end
@implementation NotEmptyPredicate
- (id) initWithElement:(Element*) e { return self = [super initWithElement:e]; }
@end
@interface IsValidPredicate : ElementPredicate
{}
- (id) initWithElement:(Element*) e;
@end
@implementation IsValidPredicate
- (id) initWithElement:(Element*) e { return self = [super initWithElement:e]; }
@end
@interface IsValidArrayPredicate : ElementPredicate
{}
- (id) initWithElement:(Element*) e;
@end
@implementation IsValidArrayPredicate
- (id) initWithElement:(Element*) e { return self = [super initWithElement:e]; }
@end

@implementation Element
{
}

static char dns = 't';
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

- (NSString*) qname
{
    return [NSString stringWithFormat:@"%c:%@", [self ns], [self name]];
}

- (NSString*) headerFile
{
    NSString * r = [self ns] == 't' ? @"../types/MPSEWS" : @"../messages/MPSEWS";
    return [[r stringByAppendingString:[self name]] stringByAppendingString:@".h"];
}

- (NSMutableArray*) m_children
{
    return children;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"%@ %@ of type (%@)  with %lu children", _tagName, _name ? _name : @"-", [self type] ? [self type] : @".", [[self children] count]];
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
    _ns  = dns;
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
    Element*     types;
}


- (void)parser:(NSXMLParser*)parser didStartElement:(NSString*)elementName namespaceURI:(NSString*)namespaceURI qualifiedName:(NSString*)qName attributes:(NSDictionary *) attributeDict
{

    if (![elementName isEqual:@"schema"] || !current) {
        current = [[Element alloc] initWithParent: current andName:elementName];
    }

    for (NSString *attr in attributeDict) {
        NSString* k =  [attr isEqual:@"default"] ? @"pdefault" : attr;

        [current setValue:[attributeDict objectForKey: attr] forKey:k];
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

- (id) init
{
    self = [super init];
    current = nil;

    NSString* filename;
    
    dns = 't';
    filename = @"ews_xsd/types.xsd";
    parser   = [[NSXMLParser alloc] initWithStream: [[NSInputStream alloc] initWithFileAtPath: filename]];

    [parser setShouldProcessNamespaces:TRUE];
    [parser setShouldReportNamespacePrefixes:TRUE];
    [parser setDelegate: self];
    [self parse];

    dns = 'm';
    filename = @"ews_xsd/messages.xsd";
    parser   = [[NSXMLParser alloc] initWithStream: [[NSInputStream alloc] initWithFileAtPath: filename]];

    [parser setShouldProcessNamespaces:TRUE];
    [parser setShouldReportNamespacePrefixes:TRUE];
    [parser setDelegate: self];
    [self parse];

    [self generate];
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
        if (!found) 
        {
            return FALSE;
        }
    }
    return result;
}

static const char* prefix = "MPSEWS";

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
    const char* dir  = [elem ns] == 't' ? "types" : "messages";

    char filename[1024];
    sprintf (filename, "%s/%s%s.h", dir, prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"../handlers/%sSimpleTypeHandler.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** SimpleType: %s is a regex %s string */\n", name, [pattern UTF8String]);

    fprintf (file, "@interface %s%s : %sSimpleTypeHandler \n\n", prefix, name, prefix);
   
    fprintf (file, "/** Register a handler to parse %s */\n", name);
    fprintf (file, "+ (void) initialize;\n");
    fprintf (file, "+ (BOOL) isValid:(%s) val;\n\n", returnType);

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

    sprintf (filename, "%s/%s%s.m", dir,  prefix, name);
    
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

    fprintf (file, "+ (BOOL) isValid:(%s) val\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    (void) val;\n");
    fprintf (file, "    // pattern = @\"%s\";\n", [pattern UTF8String]);
    fprintf (file, "    return TRUE;\n");
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

    const char* dir  = [elem ns] == 't' ? "types" : "messages";
    const char* name = [[elem name] UTF8String];

    char filename[1024];
    sprintf (filename, "%s/%s%s.h", dir, prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"../handlers/%sSimpleTypeHandler.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** SimpleType: %s is string  */\n", name);

    fprintf (file, "@interface %s%s : %sSimpleTypeHandler \n\n", prefix, name, prefix);
   
    fprintf (file, "/** Register a handler to parse %s */\n", name);
    fprintf (file, "+ (void) initialize;\n");
    fprintf (file, "+ (BOOL) isValid: (%s) val;\n\n", returnType);

    fprintf (file, "/** Initialize the handler */\n");
    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (id) initWithClass:(Class) cls;\n\n");

    fprintf (file, "/** Process the characters */\n");
    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*)s;\n\n", returnType, returnType);
    
    fprintf (file, "/** Write to the buffer the string value */\n");
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object;\n\n", returnType);
    
    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "%s/%s%s.m", dir, prefix, name);
    
    file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"%s%s.h\"", prefix, name);
    fprintf (file, "\n");
    fprintf (file, "@implementation %s%s /* SimpleType */\n\n", prefix, name);

    
    fprintf (file, "+ (void) initialize\n");
    fprintf (file, "{\n");
    fprintf (file, "    [[[%s%s alloc] init] register];\n", prefix, name);
    fprintf (file, "}\n\n");

    fprintf (file, "+ (BOOL) isValid: (%s) val\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    (void) val;\n");
    fprintf (file, "    return TRUE;\n");
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
    const char* dir  = [elem ns] == 't' ? "types" : "messages";

    char filename[1024];
    sprintf (filename, "%s/%s%s.h", dir, prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"../handlers/%sSimpleTypeHandler.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** SimpleType: %s is a int between [%s, %s] */\n", name, min ? [min UTF8String] : "-Inf", max ? [max  UTF8String] : "+Inf");

    fprintf (file, "@interface %s%s : %sSimpleTypeHandler \n\n", prefix, name, prefix);
   
    fprintf (file, "/** Register a handler to parse %s */\n", name);
    fprintf (file, "+ (void) initialize;\n");
    fprintf (file, "+ (BOOL) isValid: (%s) val;\n\n", returnType);

    fprintf (file, "/** Initialize the handler */\n");
    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (id) initWithClass:(Class) cls;\n\n");

    fprintf (file, "/** Process the characters */\n");
    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*)s;\n\n", returnType, returnType);
    
    fprintf (file, "/** Write to the buffer the string value */\n");
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object;\n\n", returnType);
    
    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "%s/%s%s.m", dir, prefix, name);
    
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

    fprintf (file, "+ (BOOL) isValid: (%s) val\n", returnType);
    fprintf (file, "{\n");
    fprintf (file, "    (void) val;\n");
    if (min) fprintf (file, "    if ([val intValue] < %s) return FALSE;\n", [min UTF8String]);
    if (max) fprintf (file, "    if ([val intValue] > %s) return FALSE;\n", [max UTF8String]);
    fprintf (file, "    return TRUE;\n");
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
    const char* dir  = [elem ns] == 't' ? "types" : "messages";

    char filename[1024];
    sprintf (filename, "%s/%s%s.h", dir, prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"../handlers/%sSimpleTypeHandler.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** SimpleType: %s is a min length string of size %s */\n", name, [min UTF8String]);

    fprintf (file, "@interface %s%s : %sSimpleTypeHandler \n\n", prefix, name, prefix);
   
    fprintf (file, "/** Register a handler to parse %s */\n", name);
    fprintf (file, "+ (void) initialize;\n");
    fprintf (file, "+ (BOOL) isValid:(NSString*) val;\n\n");

    fprintf (file, "/** Initialize the handler */\n");
    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (id) initWithClass:(Class) cls;\n\n");

    fprintf (file, "/** Process the characters */\n");
    fprintf (file, "- (%s) updateObject:(%s)obj withCharacters:(NSString*)s;\n\n", returnType, returnType);
    
    fprintf (file, "/** Write to the buffer the string value */\n");
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer for:(%s) object;\n\n", returnType);
    
    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "%s/%s%s.m", dir,  prefix, name);
    
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

    fprintf (file, "+ (BOOL) isValid:(NSString*) val\n");
    fprintf (file, "{\n");
    fprintf (file, "    return [val length] > minLength;\n");
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
    const char* dir  = [elem ns] == 't' ? "types" : "messages";

    char filename[1024];
    sprintf (filename, "%s/%s%s.h", dir, prefix, name);
    
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
    fprintf (file, "+ (void) initialize;\n");
    fprintf (file, "+ (BOOL) isValid:(NSString*)val;\n\n");

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

    sprintf (filename, "%s/%s%s.m", dir, prefix, name);
    
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

    fprintf (file, "+ (BOOL) isValid:(NSString*) val\n");
    fprintf (file, "{\n");
    fprintf (file, "    return [enumerations containsObject:val];\n");
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
    const char* dir  = [elem ns] == 't' ? "types" : "messages";

    char filename[1024];
    sprintf (filename, "%s/%s%s.h", dir, prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"%sNonEmptyStringType.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** SimpleType: %s is string  */\n", name);

    fprintf (file, "@interface %s%s : %sNonEmptyStringType \n\n", prefix, name, prefix);
   
    fprintf (file, "/** Register a handler to parse %s */\n", name);
    fprintf (file, "+ (void) initialize;\n");
    fprintf (file, "+ (BOOL) isValid:(NSString*)val;\n\n");

    fprintf (file, "/** Initialize the handler */\n");
    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (id) initWithClass:(Class) cls;\n\n");

    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "%s/%s%s.m", dir, prefix, name);
    
    file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"%s%s.h\"", prefix, name);
    fprintf (file, "\n");
    fprintf (file, "@implementation %s%s /* SimpleType */\n\n", prefix, name);

    
    fprintf (file, "+ (void) initialize\n");
    fprintf (file, "{\n");
    fprintf (file, "    [[[%s%s alloc] init] register];\n", prefix, name);
    fprintf (file, "}\n\n");

    fprintf (file, "+ (BOOL) isValid:(NSString*)val\n");
    fprintf (file, "{\n");
    fprintf (file, "    return [%sNonEmptyStringType isValid:val];\n", prefix);
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
        return [s stringByReplacingOccurrencesOfString:@"t:" withString:@"MPSEWS"];
    }
    if ([s hasPrefix:@"m:"]) {
        return [s stringByReplacingOccurrencesOfString:@"m:" withString:@"MPSEWS"];
    }
    return s;
}

- (NSString*) trimNS:(NSString*)s
{
    if ([s hasPrefix:@"t:"]) {
        return [s stringByReplacingOccurrencesOfString:@"t:" withString:@""];
    }
    if ([s hasPrefix:@"m:"]) {
        return [s stringByReplacingOccurrencesOfString:@"m:" withString:@""];
    }
    if ([s hasPrefix:@"xs:"]) {
        return [s stringByReplacingOccurrencesOfString:@"xs" withString:@""];
    }
    return s;
}

- (NSArray<NSString*>*) sorted:(NSMutableSet<NSString*>*) set
{
    NSMutableArray<NSString*>* result = [[NSMutableArray alloc] init];
    for (NSString* s in set) [result addObject:s];
    return  [result sortedArrayUsingSelector:@selector(compare:)];
}

-(void) generateStructForElement:(Element*) elem
           withAttributes:(NSArray*) attributes withElements:(NSArray*) elements 
           withSuperAttributes:(NSArray*) s_attributes withSuperElements:(NSArray*)s_elements andBaseClass:(NSString*) base
           simpleContentHandlerClass:(NSString*) contentHandlerClass
{
    NSLog(@"Generating struct for %@", [elem name]);
    [self validation:elem];

    const char* name = [[elem name] UTF8String];
    const char* dir  = [elem ns] == 't' ? "types" : "messages";

    char filename[1024];
    sprintf (filename, "%s/%s%s.h", dir,  prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n"); 
    if (![base isEqual:@"NSObject"]) {
        fprintf (file, "#import \"%s.h\"\n", [base UTF8String]);
    }
    fprintf (file, "\n\n\n");
    NSMutableSet<NSString*>* forwards = [[NSMutableSet<NSString*> alloc] init];
    for  (Element* e in elements) {
            NSString* n = [self objectType:[e type]];
            if (n && ![n hasPrefix:@"NS"] && [n hasSuffix:@"*"]) {
                    n = [n stringByReplacingOccurrencesOfString:@"*" withString:@";"];
                    [forwards addObject:n];
            }
    }
    for (Element* e in attributes) {
        if ([[e tagName] isEqual:@"attribute"])
        {
            NSString* n = [self objectType:[e type]];
            if (n && ![n hasPrefix:@"NS"] && [n hasSuffix:@"*"]) {
                    n = [n stringByReplacingOccurrencesOfString:@"*" withString:@";"];
                    [forwards addObject:n];
            }
        }
    }
    for  (NSString* i in [self sorted:forwards]) {
        fprintf (file, "@class %s\n", [i UTF8String]);
    }
    fprintf (file, "\n\n\n");
    fprintf (file, "/* %s */\n", name);

    fprintf (file, "@interface %s%s : %s\n\n", prefix, name, [base UTF8String]);


    [elem setResultType:[@"MPSEWS" stringByAppendingString:[[elem name] stringByAppendingString:@"*"]]];
   
    fprintf (file, "+ (void) initialize;\n");
    fprintf (file, "+ (BOOL) isValid:(%s%s*) val;\n\n", prefix, name);

    fprintf (file, "- (id) init;\n");
    fprintf (file, "- (Class) handlerClass;\n");
    fprintf (file, "- (NSString*) description;\n\n");

    unsigned int tlength = 8;
    unsigned int nlength = 5;
    // Attributes
    for (Element* e in attributes) 
    {
            tlength = [[self objectType:[e type]] length] > tlength ? [[self objectType:[e type]] length] : tlength;
            nlength = [[e name] length] > nlength ? [[e name] length] : nlength;
    }
    for  (Element* e in elements)
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

    for (Element* e in attributes)
    {
            NSString* t = [self objectType:[e type]];

            if ([t hasPrefix:@"NS"])
                fprintf (file, "@property (strong) %s %s  /* %s */;\n", [[self pad:[self objectType:[e type]] toLength:tlength] UTF8String], [[self pad:[self propertyName:[e name]] toLength:nlength] UTF8String], [[self trimTypeName:[e type]] UTF8String]);
            else
                fprintf (file, "@property (strong) %s %s;\n", [[self pad:[self objectType:[e type]] toLength:tlength] UTF8String], [[self propertyName:[e name]] UTF8String]);
    }
    for  (Element* e in elements)
    {
        NSString* t = [self objectType:[e type]];

        if (![e maxOccurs] || [[e maxOccurs] isEqual:@"1"]) {
            if ([t hasPrefix:@"NS"])
                fprintf (file, "@property (strong) %s %s  /* %s */;\n", [[self pad:[self objectType:[e type]] toLength:tlength] UTF8String], [[self pad:[self propertyName:[e name]] toLength:nlength] UTF8String], [[self trimTypeName:[e type]] UTF8String]);
            else
                fprintf (file, "@property (strong) %s %s;\n", [[self pad:[self objectType:[e type]] toLength:tlength] UTF8String], [[self propertyName:[e name]] UTF8String]);
        }
        else if ([[e maxOccurs] isEqual:@"unbounded"] || [[e maxOccurs] isEqual:@"100"])
        {
            NSString* str = [[NSString alloc] initWithFormat:@"NSMutableArray<%@>*", [self objectType:[e type]]];
            if ([t hasPrefix:@"NS"])
                fprintf (file, "@property (strong) %s %s /* %s */;\n", [[self pad:str toLength:tlength] UTF8String], [[self pad:[self propertyName:[e name]] toLength:nlength] UTF8String], [[self trimTypeName:[e type]] UTF8String]);
            else
                fprintf (file, "@property (strong) %s %s;\n", [[self pad:str toLength:tlength] UTF8String], [[self propertyName:[e name]] UTF8String]);
        }
        else
        {
            NSLog (@"maxOccurs is %@", [e maxOccurs]);
            exit (-1);
        }
    }

    fprintf (file, "\n\n");
    for  (Element* e in elements)
    {
        if ([e maxOccurs] && [[e maxOccurs] isEqual:@"unbounded"])
        {
            fprintf (file, "- (void) add%s:(%s) elem;\n", [[e name] UTF8String], [[self objectType:[e type]] UTF8String]);
        }
    }

    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "%s/%s%s.m", dir,  prefix, name);
    
    file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"../handlers/%sObjectTypeHandler.h\"\n", prefix);
    fprintf (file, "\n#import \"%s%s.h\"\n", prefix, name);

    NSMutableSet<NSString*>* includes = [[NSMutableSet<NSString*> alloc] init];
    for  (Element* e in elements) {
        [includes addObject:[self includeFile:[e type]]];
    }
    for (Element* e in attributes) {
        if ([[e tagName] isEqual:@"attribute"])
        {
            [includes addObject:[self includeFile:[e type]]];
        }
    }
    for  (Element* e in s_elements) {
        [includes addObject:[self includeFile:[e type]]];
    }
    for (Element* e in s_attributes) {
        if ([[e tagName] isEqual:@"attribute"])
        {
            [includes addObject:[self includeFile:[e type]]];
        }
    }
    for  (NSString* i in [self sorted:includes]) {
        fprintf (file, "#import \"%s\"\n", [i UTF8String]);
    }
    fprintf (file, "\n\n");
    fprintf (file, "@implementation %s%s \n\n", prefix, name);

    
    fprintf (file, "+ (void) initialize\n");
    fprintf (file, "{\n");

    if (contentHandlerClass)
    {
        fprintf (file, "    %sObjectTypeHandler* handler = [[%sObjectTypeHandler alloc] initWithClass:[%s%s class] andContentHandlerClass:[%s class]];\n\n", prefix, prefix, prefix, name, [contentHandlerClass UTF8String]);
    }
    else
    {
        fprintf (file, "    %sObjectTypeHandler* handler = [[%sObjectTypeHandler alloc] initWithClass:[%s%s class]];\n\n", prefix, prefix, prefix, name);
    }

    for (Element* e in s_attributes)
    {
        fprintf (file, "    [handler property    : @\"%s\"\n", [[self propertyName:[e name]] UTF8String]);
        fprintf (file, "             withAttrTag : @\"%s\"\n", [[e name] UTF8String]);
        fprintf (file, "             withHandler : [%s%s class]];\n\n", prefix, [[self handler:[e type]] UTF8String]);
    }

    for (Element* e in attributes)
    {
        fprintf (file, "    [handler property    : @\"%s\"\n", [[self propertyName:[e name]] UTF8String]);
        fprintf (file, "             withAttrTag : @\"%s\"\n", [[e name] UTF8String]);
        fprintf (file, "             withHandler : [%s%s class]];\n\n", prefix, [[self handler:[e type]] UTF8String]);
    }

    for  (Element* e in s_elements)
    {
        if (![e maxOccurs] || [[e maxOccurs] isEqual:@"1"]) {
            fprintf (file, "    [handler property      : @\"%s\"\n", [[self propertyName:[e name]] UTF8String]);
            fprintf (file, "             withNamespace : '%c'\n", [e ns]);
            fprintf (file, "             withXmlTag    : @\"%s\"\n", [[e name] UTF8String]);
            fprintf (file, "             withHandler   : [%s%s class]];\n\n", prefix, [[self handler:[e type]] UTF8String]);
        }
        else if ([[e maxOccurs] isEqual:@"unbounded"] || [[e maxOccurs] isEqual:@"100"])
        {
            fprintf (file, "    [handler listProperty  : @\"%s\"\n", [[self propertyName:[e name]] UTF8String]);
            fprintf (file, "             useSelector   : @\"add%s\"\n", [[e name] UTF8String]);
            fprintf (file, "             withNamespace : '%c'\n", [e ns]);
            fprintf (file, "             withXmlTag    : @\"%s\"\n", [[e name] UTF8String]);
            fprintf (file, "             withHandler   : [%s%s class]];\n\n", prefix, [[self handler:[e type]] UTF8String]);
        }
        else
        {
            NSLog (@"maxOccurs is %@", [e maxOccurs]);
            exit (-1);
        }
    }

    for  (Element* e in elements)
    {
        if (![e maxOccurs] || [[e maxOccurs] isEqual:@"1"]) {
            fprintf (file, "    [handler property      : @\"%s\"\n", [[self propertyName:[e name]] UTF8String]);
            fprintf (file, "             withNamespace : '%c'\n", [e ns]);
            fprintf (file, "             withXmlTag    : @\"%s\"\n", [[e name] UTF8String]);
            fprintf (file, "             withHandler   : [%s%s class]];\n\n", prefix, [[self handler:[e type]] UTF8String]);
        }
        else if ([[e maxOccurs] isEqual:@"unbounded"] || [[e maxOccurs] isEqual:@"100"])
        {
            fprintf (file, "    [handler listProperty  : @\"%s\"\n", [[self propertyName:[e name]] UTF8String]);
            fprintf (file, "             useSelector   : @\"add%s\"\n", [[e name] UTF8String]);
            fprintf (file, "             withNamespace : '%c'\n", [e ns]);
            fprintf (file, "             withXmlTag    : @\"%s\"\n", [[e name] UTF8String]);
            fprintf (file, "             withHandler   : [%s%s class]];\n\n", prefix, [[self handler:[e type]] UTF8String]);
        }
        else
        {
            NSLog (@"maxOccurs is %@", [e maxOccurs]);
            exit (-1);
        }
    }
    fprintf (file, "    [handler register];\n");
    fprintf (file, "}\n\n");

    fprintf (file, "+ (BOOL) isValid:(%s%s*) val\n", prefix, name);
    fprintf (file, "{   (void) val;\n");

    tlength = 4;
    nlength = 4;
    if (![base isEqual:@"NSObject"]) {
        fprintf (file, "    if (![%s isValid:val]) return FALSE;\n", [base UTF8String]);
    }
    for (Element* e in attributes)
    {
        fprintf (file, "    if ([val %s] && ![%s%s isValid:[val %s]]) return FALSE;\n",
                                      [[self pad:[self propertyName:[e name]] toLength:nlength] UTF8String],
                                      prefix,
                                      [[self pad:[self handler:[e type]]      toLength:(tlength - 4)] UTF8String],
                                      [[self pad:[self propertyName:[e name]] toLength:nlength] UTF8String]);
    }
    for  (Element* e in elements)
    {
        BOOL isArray = ([e maxOccurs] && ([[e maxOccurs] isEqual:@"unbounded"] || [[e maxOccurs] isEqual:@"100"]));
        if (isArray)
        {
            fprintf (file, "    if ([val %s]) {\n", [[self propertyName:[e name]] UTF8String]);
            fprintf (file, "        for (%s obj in [val %s]) {\n", [[self objectType:[e type]] UTF8String], [[self propertyName:[e name]] UTF8String]);
            fprintf (file, "            if (![%s%s isValid:obj]) return FALSE;\n",
                                        prefix,
                                        [[self pad:[self handler:[e type]]      toLength:(tlength - 4)] UTF8String]);
            fprintf (file, "        }\n");
            fprintf (file, "    }\n");
        }
        else
        {
            fprintf (file, "    if ([val %s] && ![%s%s isValid:[val %s]]) return FALSE;\n",
                                        [[self pad:[self propertyName:[e name]] toLength:nlength] UTF8String],
                                        prefix,
                                        [[self pad:[self handler:[e type]]      toLength:(tlength - 4)] UTF8String],
                                        [[self pad:[self propertyName:[e name]] toLength:nlength] UTF8String]);
        }
    }
    fprintf (file, "    return TRUE;\n");
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
    for (Element* e in attributes)
    {
        fprintf (file, " %s=%%@", [[e name] UTF8String]);
    }
    for  (Element* e in elements)
    {
        fprintf (file, " %s=%%@", [[e name] UTF8String]);
    }
    if (![base isEqual:@"NSObject"])
    {
        fprintf (file, " super=%%@");
    }
    fprintf (file, "\"");
    for (Element* e in attributes)
    {
        fprintf (file, ", _%s", [[self propertyName:[e name]] UTF8String]);
    }
    for  (Element* e in elements)
    {
        fprintf (file, ", _%s", [[self propertyName:[e name]] UTF8String]);
    }
    if (![base isEqual:@"NSObject"])
    {
        fprintf (file, ", [super description]");
    }
    fprintf (file, "];\n");
    fprintf (file, "}\n\n");

    for  (Element* e in elements)
    {
        if ([e maxOccurs] && [[e maxOccurs] isEqual:@"unbounded"])
        {
            fprintf (file, "- (void) add%s:(%s) elem\n", [[e name] UTF8String], [[self objectType:[e type]] UTF8String]);
            fprintf (file, "{\n");
            fprintf (file, "    if (![self %s]) {\n", [[self propertyName:[e name]] UTF8String]);
            if ([[e name] hasPrefix:@"New"] || [[e name] hasPrefix:@"Copy"])
                fprintf (file, "        [self setP%s:[[NSMutableArray<%s> alloc] init]];\n", [[e name] UTF8String], [[self objectType:[e type]] UTF8String]);
            else
                fprintf (file, "        [self set%s:[[NSMutableArray<%s> alloc] init]];\n", [[e name] UTF8String], [[self objectType:[e type]] UTF8String]);
            fprintf (file, "    }\n");
            fprintf (file, "    [_%s addObject:elem];\n", [[self propertyName:[e name]] UTF8String]);
            fprintf (file, "}\n\n");
        }
    }

    fprintf (file, "@end\n\n");
    fclose (file);
}

-(void) generateStructForElement:(Element*) elem
           withAttributes:(NSArray*) attributes withElements:(NSArray*) elements 
           withSuperAttributes:(NSArray*) s_attributes withSuperElements:(NSArray*)s_elements andBaseClass:(NSString*) base
{
    [self generateStructForElement:elem withAttributes:attributes withElements:elements
           withSuperAttributes:s_attributes withSuperElements:s_elements andBaseClass:base
           simpleContentHandlerClass:nil];
}
-(void) generateStructForElement:(Element*) elem
           withAttributes:(NSArray*) attributes withElements:(NSArray*) elements 
{
     [self generateStructForElement:elem
           withAttributes:attributes withElements:elements 
           withSuperAttributes:[[NSArray alloc] init] withSuperElements:[[NSArray alloc] init] andBaseClass:@"NSObject"];
}

- (NSString*) propertyName:(NSString*) name
{
    if ([name hasPrefix:@"New"])
    {
        name = [NSString stringWithFormat:@"p%@", name];
    }
    if ([name hasPrefix:@"Copy"])
    {
        name = [NSString stringWithFormat:@"p%@", name];
    }
    NSString* first = [[name substringToIndex:1] lowercaseString];
    NSString* rest  = [name substringFromIndex:1];


    return [first stringByAppendingString:rest];
}

- (void) generateForSimpleStruct
{
    for (Element* elem in [current children])
    {
        [self generateStructForElement:elem];
    }
}

- (void) preprocess
{
    for (Element* elem in [current children])
    {
        [self preprocessElement:elem];
    }
}

- (NSString*) objectType:(NSString*)nm
{
    if ([nm hasPrefix:@"xs:"] || [nm hasPrefix:@"xml:"])
    {
        if ([nm isEqual:@"xs:string"])        return @"NSString*";
        if ([nm isEqual:@"xs:dateTime"])      return @"NSString*";
        if ([nm isEqual:@"xs:date"])          return @"NSString*";
        if ([nm isEqual:@"xs:anyURI"])        return @"NSString*";
        if ([nm isEqual:@"xs:base64Binary"])  return @"NSData*";
        if ([nm isEqual:@"xs:duration"])      return @"NSString*";
        if ([nm isEqual:@"xs:language"])      return @"NSString*";
        if ([nm isEqual:@"xml:lang"])         return @"NSString*";
        if ([nm isEqual:@"xs:time"])          return @"NSString*";
        if ([nm isEqual:@"xs:short"])         return @"NSNumber*";
        if ([nm isEqual:@"xs:int"])           return @"NSNumber*";
        if ([nm isEqual:@"xs:double"])        return @"NSNumber*";
        if ([nm isEqual:@"xs:boolean"])       return @"NSNumber*";
        if ([nm isEqual:@"xs:unsignedInt"])   return @"NSNumber*";
        if ([nm isEqual:@"xs:unsignedShort"]) return @"NSNumber*";


        NSLog(@"Unknown type %@", nm);
        NSAssert(NO, @"Unknown type");
    }

    for (Element* elem in [current children])
    {
        if ([[elem qname] isEqual:nm])
        {
            return [elem resultType];
        }
    }

    NSLog(@"Unknown type %@", nm);
    return nil;
}

- (NSString*) includeFile:(NSString*)nm
{
    if ([nm hasPrefix:@"xs:"] || [nm hasPrefix:@"xml:"])
    {
        if ([nm isEqual:@"xs:string"])        return @"../handlers/MPSEWSStringTypeHandler.h";
        if ([nm isEqual:@"xs:int"])           return @"../handlers/MPSEWSIntegerTypeHandler.h";
        if ([nm isEqual:@"xs:boolean"])       return @"../handlers/MPSEWSBooleanTypeHandler.h";
        if ([nm isEqual:@"xs:dateTime"])      return @"../handlers/MPSEWSDateTimeTypeHandler.h";
        if ([nm isEqual:@"xs:date"])          return @"../handlers/MPSEWSDateTypeHandler.h";
        if ([nm isEqual:@"xs:anyURI"])        return @"../handlers/MPSEWSAnyUriTypeHandler.h";
        if ([nm isEqual:@"xs:base64Binary"])  return @"../handlers/MPSEWSBase64BinaryTypeHandler.h";
        if ([nm isEqual:@"xs:double"])        return @"../handlers/MPSEWSDoubleTypeHandler.h";
        if ([nm isEqual:@"xs:duration"])      return @"../handlers/MPSEWSDurationTypeHandler.h";
        if ([nm isEqual:@"xs:language"])      return @"../handlers/MPSEWSLanguageTypeHandler.h";
        if ([nm isEqual:@"xml:lang"])         return @"../handlers/MPSEWSXmlLanguageTypeHandler.h";
        if ([nm isEqual:@"xs:short"])         return @"../handlers/MPSEWSShortTypeHandler.h";
        if ([nm isEqual:@"xs:time"])          return @"../handlers/MPSEWSTimeTypeHandler.h";
        if ([nm isEqual:@"xs:unsignedInt"])   return @"../handlers/MPSEWSUnsignedIntTypeHandler.h";
        if ([nm isEqual:@"xs:unsignedShort"]) return @"../handlers/MPSEWSUnsignedShortTypeHandler.h";

        NSLog(@"Unknown type %@", nm);
        NSAssert(NO, @"Unknown type");
    }

    for (Element* elem in [current children])
    {
        if ([[elem qname] isEqual:nm]) {
            return [elem headerFile];
        }
    }
    NSLog(@"Unknown type %@", nm);
    exit(-1);

    return nil;
}

- (NSString*) handler:(NSString*)nm
{
    if ([nm hasPrefix:@"xs:"] || [nm hasPrefix:@"xml:"])
    {
        if ([nm isEqual:@"xs:string"])        return @"StringTypeHandler";
        if ([nm isEqual:@"xs:int"])           return @"IntegerTypeHandler";
        if ([nm isEqual:@"xs:boolean"])       return @"BooleanTypeHandler";
        if ([nm isEqual:@"xs:dateTime"])      return @"DateTimeTypeHandler";
        if ([nm isEqual:@"xs:date"])          return @"DateTypeHandler";
        if ([nm isEqual:@"xs:anyURI"])        return @"AnyUriTypeHandler";
        if ([nm isEqual:@"xs:base64Binary"])  return @"Base64BinaryTypeHandler";
        if ([nm isEqual:@"xs:double"])        return @"DoubleTypeHandler";
        if ([nm isEqual:@"xs:duration"])      return @"DurationTypeHandler";
        if ([nm isEqual:@"xml:lang"])         return @"XmlLanguageTypeHandler";
        if ([nm isEqual:@"xs:language"])      return @"LanguageTypeHandler";
        if ([nm isEqual:@"xs:short"])         return @"ShortTypeHandler";
        if ([nm isEqual:@"xs:time"])          return @"TimeTypeHandler";
        if ([nm isEqual:@"xs:unsignedInt"])   return @"UnsignedIntTypeHandler";
        if ([nm isEqual:@"xs:unsignedShort"]) return @"UnsignedShortTypeHandler";

        NSLog(@"Unknown type %@", nm);
        NSAssert(NO, @"Unknown type");
    }

    for (Element* elem in [current children])
    {
        if ([[elem qname] isEqual:nm])
        {
            return [elem name];
        }
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
    [self preprocess];

    while (TRUE)
    {
        int r = [self resolved];
        [self generateForSimpleStruct];

        if (r == [self resolved])
            break;
    }

    for (Element* elem in [current children])
    {
        if ([[elem tagName] isEqual:@"complexType"] && ![self isResolved:elem])
        {
            NSLog(@"Fix me %@", elem);
            exit (-1);
        }
    }
    for (Element* elem in [current children])
    {
        if ([[elem tagName] isEqual:@"element"])
        {
            Element* type = [self complexTypeElement:[elem type]];

            if (type)
            {
                NSString* cls = [NSString stringWithFormat:@"MPSEWS%@", [type name]];

                if ([type ns] == 't')
                    fprintf (stdout, "#import \"../types/%s.h\"\n", [cls UTF8String]);
                else
                    fprintf (stdout, "#import \"../messages/%s.h\"\n", [cls UTF8String]);
            }
            else NSLog(@"Undefined element %@", elem);
        }
    }
    for (Element* elem in [current children])
    {
        if ([[elem tagName] isEqual:@"element"])
        {
            Element* type = [self complexTypeElement:[elem type]];

            if (type)
            {
                NSString* tag = [NSString stringWithFormat:@"%c:%@", [elem ns], [elem name]];
                NSString* cls = [NSString stringWithFormat:@"MPSEWS%@", [type name]];

                fprintf (stdout, "    [MPSEWSDocumentHandler handleTag:@\"%s\" withHandlerClass:[%s class]];\n", [tag UTF8String], [cls UTF8String]);
            }
            else NSLog(@"Undefined element %@", elem);
        }
    }
}

- (Element*) complexTypeElement:(NSString*) name
{
    for (Element* elem in [current children])
    {
        //if ([[elem tagName] isEqual:@"complexType"])
        {
            if ([name isEqual:[elem qname]]) return elem;
        }
    }
    return nil;
}

- (ExclusiveOrPredicate*) validationFromGroup:(NSString*)name
{
    ExclusiveOrPredicate* xor = [[ExclusiveOrPredicate alloc] init];
    for (Element* elem in [current children])
    {
        if ([[elem tagName] isEqual:@"group"])
        {
            if ([name isEqual:[elem qname]])
            {
                for (Element* e in  [[[[[elem children] objectAtIndex:0] children] objectAtIndex:0] children])
                {
                    [xor addObject:[[NotNullPredicate alloc] initWithElement:e]];
                }
                return xor;
            }
        }
    }
    NSAssert(NO, @"group not found");
    return xor;
}


- (Element*) baseClassElement:(Element*) e
{
    //Element* e = [self complexTypeElement:elem];
    if (e)
    {
        if ([self forElement:e areChildren:@"complexContent"])
        {
            Element* complexContent = [[e children] objectAtIndex:0];
            NSAssert ([[e children] count] == 1, @"complexContent should be the only element");
            NSAssert ([[complexContent children] count] == 1, @"complexContent should have only element");

            Element* extension = [[complexContent children] objectAtIndex:0];
            NSAssert ([extension base], @"extension should have base spec");

            return [self complexTypeElement:[extension base]];
        }
     }
     return nil;
}

- (NSString*) baseClass:(Element*) e
{
    //Element* e = [self complexTypeElement:elem];
    if ([self baseClassElement:e])
    {
        e = [self baseClassElement:e];
        return [[e resultType] stringByReplacingOccurrencesOfString:@"*" withString:@""];
    }

    if (e)
    {
        if ([[e children] count] == 0)
        {
            return @"NSObject";
        }
        if ([self forElement:e areChildren:@"simpleContent"])
        {
            Element* simpleContent = [[e children] objectAtIndex:0];
            NSAssert ([[e children] count] == 1, @"simpleContent should be the only element");
            NSAssert ([[simpleContent children] count] == 1, @"simpleContent should have only element");

            Element* extension = [[simpleContent children] objectAtIndex:0];
            NSAssert ([[extension tagName] isEqual:@"extension"], @"Only extension should be there");

            if ([[extension base] isEqual:@"xs:string"])
            {
                return @"MPSEWSStringType";
            }
            if ([[extension base] isEqual:@"xs:base64Binary"])
            {
                return @"MPSEWSBase64BinaryType";
            }
            NSAssert (NO, @"base extension can be string or base64Binary");
        }
    }
    return @"NSObject";
}

- (NSString*) contentHandlerClass:(Element*) e
{
    //Element* e = [self complexTypeElement:elem];
    if (e)
    {
        if ([[e children] count] == 0)
        {
            return nil;
        }
        if ([self forElement:e areChildren:@"simpleContent"])
        {
            Element* simpleContent = [[e children] objectAtIndex:0];
            NSAssert ([[e children] count] == 1, @"simpleContent should be the only element");
            NSAssert ([[simpleContent children] count] == 1, @"simpleContent should have only element");

            Element* extension = [[simpleContent children] objectAtIndex:0];
            NSAssert ([[extension tagName] isEqual:@"extension"], @"Only extension should be there");

            if ([[extension base] isEqual:@"xs:string"])
            {
                return @"MPSEWSStringTypeHandler";
            }
            if ([[extension base] isEqual:@"xs:base64Binary"])
            {
                return @"MPSEWSBase64BinaryTypeHandler";
            }
            NSAssert (NO, @"base extension can be string or base64Binary");
        }
        else if ([self forElement:e areChildren:@"complexContent"])
        {
            Element* complexContent = [[e children] objectAtIndex:0];
            NSAssert ([[e children] count] == 1, @"complexContent should be the only element");
            NSAssert ([[complexContent children] count] == 1, @"complexContent should have only element");

            Element* extension = [[complexContent children] objectAtIndex:0];

            NSAssert ([extension base], @"extension should have base spec");
            return [self contentHandlerClass:[self complexTypeElement:[extension base]]];
        }
    }
    return nil;
}

- (NSMutableArray*) attributesFromGroup:(NSString*) n
{
    Element* e = [self complexTypeElement:n];
    NSMutableArray* result = [[NSMutableArray alloc] init];

    NSAssert (e, @"cant be null");
    for (Element* a in [e children])
    {
        NSAssert ([[a tagName] isEqual:@"attribute"], @"hello");
        [result addObject:a];
    }
    NSLog(@"Returning %@", result);
    return result;
}

- (NSMutableArray*) attributes:(Element*) e getSuper:(BOOL)r
{

    NSMutableArray* result = [[NSMutableArray alloc] init];

    //Element* e = [self complexTypeElement:elem];
    if (e)
    {
        if ([[e children] count] == 0)
        {
            return result;
        }
        if ([self forElement:e areChildren:@"sequence,attribute,attributeGroup,choice"])
        {
            for (Element * a in [e children])
            {
                if ([[a tagName] isEqual:@"attribute"] && [a name]) {
                    [result addObject:a];
                }
                else if ([[a tagName] isEqual:@"attributeGroup"])
                {
                NSLog (@"Getting attributes");
                    [result addObjectsFromArray:[self attributesFromGroup:[a ref]]];
                }
            }
            return result;
        }
        else if ([self forElement:e areChildren:@"simpleContent"])
        {
            Element* simpleContent = [[e children] objectAtIndex:0];
            NSAssert ([[e children] count] == 1, @"simpleContent should be the only element");
            NSAssert ([[simpleContent children] count] == 1, @"simpleContent should have only element");

            Element* extension = [[simpleContent children] objectAtIndex:0];
            NSAssert ([[extension tagName] isEqual:@"extension"], @"Only extension should be there");

            for (Element * a in [extension children])
            {
                if ([[a tagName] isEqual:@"attribute"] && [a name]) {
                    [result addObject:a];
                }
            }
            return result;
        }
        else if ([self forElement:e areChildren:@"complexContent"])
        {
            Element* complexContent = [[e children] objectAtIndex:0];
            NSAssert ([[e children] count] == 1, @"complexContent should be the only element");
            NSAssert ([[complexContent children] count] == 1, @"complexContent should have only element");

            Element* extension = [[complexContent children] objectAtIndex:0];

            if ([[extension tagName] isEqual:@"restriction"]) {
                if (r) {
                    [result addObjectsFromArray:[self attributes:[self complexTypeElement:[extension base]] getSuper:r]];
                }
                return result;
            }

            NSAssert ([[extension tagName] isEqual:@"extension"], @"Only extension should be there");
            NSAssert ([extension base], @"extension should have base spec");

            if (r) {
                [result addObjectsFromArray:[self attributes:[self complexTypeElement:[extension base]] getSuper:r]];
            }
            [result addObjectsFromArray:[self attributes:extension getSuper:r]];
            return result;
        }
        else return nil;
    }
    return nil;
}

- (Element*) resolved:(Element*) elem
{
    if (![elem ref]) return elem;

    for (Element* e in [current children])
    {
        if ([[e tagName] isEqual:@"element"] && [[e name] isEqual:[self trimNS:[elem ref]]])
            return [self resolved:e];
    }
    NSAssert (NO, @"can't resolve");
    return nil;
}

- (void) preprocessElement:(Element*) e
{
    if ([[e children] count] == 0 || [[e tagName] isEqual:@"simpleType"] || [[e tagName] isEqual:@"element"])
    {
        return;
    }
    else if ([self forElement:e areChildren:@"sequence,attribute,attributeGroup,choice,anyAttribute"])
    {
        for (Element * a in [e children])
        {
            if ([[a tagName] isEqual:@"choice"])
            {
                NSAssert ([self forElement:a areChildren:@"element"], @"can have onlt elements");

                BOOL isArray = ([a maxOccurs] && ([[a maxOccurs] isEqual:@"unbounded"] || [[a maxOccurs] isEqual:@"100"]));
                BOOL isEmpty = (![a minOccurs] && [[a minOccurs] isEqual:@"0"]);

                if (isArray)
                {
                    for (Element *x in [a children])  {
                        [x setMaxOccurs:@"unbounded"];
                    }
                }
                if (isEmpty) {
                    for (Element *x in [a children])  {
                        [x setMinOccurs:@"0"];
                    }
                }
            }
            else if ([[a tagName] isEqual:@"sequence"])
            {
                for (Element * x in [a children])
                {
                    if ([[ x tagName] isEqual:@"element"])
                    {
                        BOOL isArray = ([x maxOccurs] && ([[x maxOccurs] isEqual:@"unbounded"] || [[x maxOccurs] isEqual:@"100"]));
                        if (isArray) {
                            [x setMaxOccurs:@"unbounded"];
                        }
                    }
                    else if ([[x tagName] isEqual:@"choice"])
                    {
                        NSAssert ([self forElement:x areChildren:@"element"], @"can have onlt elements");

                        BOOL isArray = ([x maxOccurs] && ([[x maxOccurs] isEqual:@"unbounded"] || [[x maxOccurs] isEqual:@"100"]));
                        BOOL isEmpty = (![x minOccurs] && [[x minOccurs] isEqual:@"0"]);
                        if (isArray)
                        {
                            for (Element *y in [x children])  {
                                [y setMaxOccurs:@"unbounded"];
                            }
                        }
                        if (isEmpty) {
                            for (Element *y in [x children])  {
                                [y setMinOccurs:@"0"];
                            }
                        }
                    }
                    else if ([[x tagName] isEqual:@"sequence"])
                    {
                        NSAssert ([self forElement:x areChildren:@"element"], @"can have onlt elements");
                        BOOL isEmpty = (![x minOccurs] && [[x minOccurs] isEqual:@"0"]);

                        if (isEmpty) {
                            for (Element *y in [x children])  {
                                [y setMinOccurs:@"0"];
                            }
                        }
                    }
                    else if ([[x tagName] isEqual:@"group"])
                    {
                    }
                    else {
                        NSLog(@"%@", [x tagName]);
                        NSAssert (false, @"unknow type expecting element/choice/group");
                    }
                }
            }
        }
    }
    else if ([self forElement:e areChildren:@"complexContent"])
    {
        Element* complexContent = [[e children] objectAtIndex:0];
        NSAssert ([[e children] count] == 1, @"complexContent should be the only element");
        NSAssert ([[complexContent children] count] == 1, @"complexContent should have only element");

        Element* extension = [[complexContent children] objectAtIndex:0];

        if ([[extension tagName] isEqual:@"restriction"])
        {
            return;
        }
        NSAssert ([[extension tagName] isEqual:@"extension"], @"Only extension should be there");
        NSAssert ([extension base], @"extension should have base spec");

        if ([[extension children] count] == 0) {
            return;
        }
        NSAssert([self forElement:extension areChildren:@"choice,sequence,attribute,attributeGroup"], @"extension has sequence or choice");
        [self preprocessElement:extension];
        return;
    }
    else if ([self forElement:e areChildren:@"simpleContent"])
    {
    }
    else
    {
        NSLog (@"Fix me %@", e);
        NSAssert (false, @"what?");
    }
}

- (AndPredicate*) validation:(Element*)e
{
        AndPredicate* result = [[AndPredicate alloc] init];
        if ([[e children] count] == 0)
        {
            return result;
        }
        else if ([self forElement:e areChildren:@"sequence,attribute,attributeGroup,choice,anyAttribute"])
        {
            for (Element* x in [self elements:e getSuper:FALSE])
            {
                BOOL isArray = ([x maxOccurs] && ([[x maxOccurs] isEqual:@"unbounded"] || [[x maxOccurs] isEqual:@"100"]));
                if (isArray)
                    [result addObject:[[IsValidArrayPredicate alloc] initWithElement:x]];
                else
                    [result addObject:[[IsValidPredicate alloc] initWithElement:x]];
            }
            for (Element* x in [self attributes:e getSuper:FALSE])
            {
                [result addObject:[[IsValidPredicate alloc] initWithElement:x]];
            }
            for (Element * a in [e children])
            {
                if ([[a tagName] isEqual:@"choice"])
                {
                    BOOL isArray = ([a maxOccurs] && ([[a maxOccurs] isEqual:@"unbounded"] || [[a maxOccurs] isEqual:@"100"]));
                    BOOL isEmpty = (![a minOccurs] && [[a minOccurs] isEqual:@"0"]);

                    int elements = [[a children] count];

                    if (elements == 1)
                    {
                        if (!isEmpty) {
                            for (Element *x in [a children]) {
                                if (isArray)
                                    [result addObject:[[NotEmptyPredicate alloc] initWithElement:x]];
                                else
                                    [result addObject:[[NotNullPredicate alloc] initWithElement:x]];
                            }
                        }
                    }
                    else if (elements > 1)
                    {
                        if (isArray && !isEmpty) {
                            OrPredicate* or = [[OrPredicate alloc] init];
                            for (Element *x in [a children]) {
                                if (isArray)
                                        [or addObject:[[NotEmptyPredicate alloc] initWithElement:x]];
                                else
                                        [or addObject:[[NotNullPredicate alloc] initWithElement:x]];
                            }
                            [result addObject:or];
                        }
                        else {
                            ExclusiveOrPredicate* xor = [[ExclusiveOrPredicate alloc] init];
                            for (Element * x in [a children])
                            {
                                [xor addObject:[[NotNullPredicate alloc] initWithElement:x]];
                            }
                            if (isEmpty) {
                                [xor canHaveAllNull];
                            }
                        }
                    }
                }
                else if ([[a tagName] isEqual:@"sequence"])
                {
                    for (Element * x in [a children])
                    {
                        if ([[ x tagName] isEqual:@"element"])
                        {
                            BOOL isArray = ([x maxOccurs] && ([[x maxOccurs] isEqual:@"unbounded"] || [[x maxOccurs] isEqual:@"100"]));
                            if (isArray)
                                [result addObject:[[IsValidArrayPredicate alloc] initWithElement:x]];
                            else
                                [result addObject:[[IsValidPredicate alloc] initWithElement:x]];
                        }
                        else if ([[x tagName] isEqual:@"choice"])
                        {
                            NSAssert ([self forElement:x areChildren:@"element"], @"can have onlt elements");

                            // FIX ME
                        }
                        else if ([[x tagName] isEqual:@"sequence"])
                        {
                            NSAssert ([self forElement:x areChildren:@"element"], @"can have onlt elements");

                            // FIX ME
                        }
                        else if ([[x tagName] isEqual:@"group"])
                        {
                            for (Element * c in [self elementsFromGroup:[x ref]])
                            {
                                BOOL isArray = ([c maxOccurs] && ([[c maxOccurs] isEqual:@"unbounded"] || [[c maxOccurs] isEqual:@"100"]));
                                if (isArray)
                                    [result addObject:[[IsValidArrayPredicate alloc] initWithElement:c]];
                                else
                                    [result addObject:[[IsValidPredicate alloc] initWithElement:c]];
                            }
                        }
                        else {
                            NSLog(@"%@", [x tagName]);
                            NSAssert (false, @"unknow type expecting element/choice/group");
                        }
                    }
                    for (Element * x in [a children])
                    {
                        if ([[ x tagName] isEqual:@"element"])
                        {
                            BOOL isArray = ([x maxOccurs] && ([[x maxOccurs] isEqual:@"unbounded"] || [[x maxOccurs] isEqual:@"100"]));
                            BOOL isEmpty = [x minOccurs]  && [[x minOccurs] isEqual:@"0"];

                            if (!isEmpty)
                            {
                                if (isArray)
                                    [result addObject:[[NotEmptyPredicate alloc] initWithElement:x]];
                                else
                                    [result addObject:[[NotNullPredicate alloc] initWithElement:x]];
                            }
                        }
                        else if ([[x tagName] isEqual:@"sequence"])
                        {
                            // FIX ME
                        }
                        else if ([[x tagName] isEqual:@"choice"])
                        {
                            // FIX ME
                        }
                        else if ([[x tagName] isEqual:@"group"])
                        {
                            if ([x minOccurs] && [[x minOccurs] isEqual:@"0"])
                            {
                                ExclusiveOrPredicate* or = [self validationFromGroup:[x ref]];
                                [or canHaveAllNull];
                                [result addObject:or];
                            }
                            else
                            {
                                [result addObject:[self validationFromGroup:[x ref]]];
                            }
                        }
                        else 
                        {
                            NSLog(@"%@", [x tagName]);
                            NSAssert (false, @"We have someting other than element and group");
                        }
                    }
                }
            }
            return result;
        }
        else if ([self forElement:e areChildren:@"complexContent"])
        {
            Element* complexContent = [[e children] objectAtIndex:0];
            NSAssert ([[e children] count] == 1, @"complexContent should be the only element");
            NSAssert ([[complexContent children] count] == 1, @"complexContent should have only element");

            Element* extension = [[complexContent children] objectAtIndex:0];

            if ([[extension tagName] isEqual:@"restriction"])
            {
                return result;
            }
            NSAssert ([[extension tagName] isEqual:@"extension"], @"Only extension should be there");
            NSAssert ([extension base], @"extension should have base spec");

            if ([[extension children] count] == 0) {
                return result;
            }
            NSAssert([self forElement:extension areChildren:@"choice,sequence,attribute,attributeGroup"], @"extension has sequence or choice");
            return [self validation:extension];
        }
        else if ([self forElement:e areChildren:@"simpleContent"])
        {
            return result;
        }
        else  {
            NSLog (@"Fix me %@", e);
            NSAssert (false, @"what?");
            return nil;
        }
    return result;
}

- (Element*) referencedElement:(NSString*) name
{
    for (Element* elem in [current children])
    {
        if ([[elem tagName] isEqual:@"element"])
        {
            if ([name isEqual:[elem qname]])
            {
                return elem;
            }
        }
    }
    NSLog (@"Element name is %@", name);
    NSAssert(NO, @"element not found");
    return nil;
}

- (NSMutableArray*) elementsFromGroup:(NSString*)name
{
    for (Element* elem in [current children])
    {
        if ([[elem tagName] isEqual:@"group"])
        {
            if ([name isEqual:[elem qname]])
            {
                NSMutableArray *result = [[NSMutableArray alloc] init];

                for (Element* e in  [[[[[elem children] objectAtIndex:0] children] objectAtIndex:0] children])
                {
                    if ([e ref])
                        [result addObject:[self referencedElement:[e ref]]];
                    else
                        [result addObject:e];
                }
                return result;
            }
        }
    }
    NSLog (@"Group name is %@", name);
    NSAssert(NO, @"group not found");
    return nil;
}

- (NSMutableArray*) elementsFromChoice:(Element*)e
{
    NSMutableArray* result = [[NSMutableArray alloc] init];
    NSAssert ([self forElement:e areChildren:@"element"], @"choice can have only elements");
    for (Element * a in [e children]) {
        if ([a ref])
            [result addObject:[self referencedElement:[a ref]]];
        else
            [result addObject:a];
    }
    return result;
}

- (NSMutableArray*) elementsFromSequence:(Element*) s
{
    NSMutableArray* result = [[NSMutableArray alloc] init];
    if ([[s children] count] == 0) return result;

    NSAssert ([self forElement:s areChildren:@"element,choice,sequence,group"], @"sequence can have only elements/choice/sequence/group");

    for (Element* x in [s children])
    {
        if ([[ x tagName] isEqual:@"element"])
        {
            if ([x ref])
            {
                [result addObject:[self referencedElement:[x ref]]];
            }
            else
            {
                [result addObject:x];
            }
        }
        else if ([[x tagName] isEqual:@"choice"])
        {
            [result addObjectsFromArray:[self elementsFromChoice:x]];
        }
        else if ([[x tagName] isEqual:@"sequence"])
        {
            [result addObjectsFromArray:[self elementsFromSequence:x]];
        }
        else if ([[x tagName] isEqual:@"group"])
        {
            [result addObjectsFromArray:[self elementsFromGroup:[x ref]]];
        }
        else {
            NSLog(@"%@", [x tagName]);
        }
    }
    return result;
}

- (NSMutableArray*) elements:(Element*)e getSuper:(BOOL)r
{

    NSMutableArray* result = [[NSMutableArray alloc] init];
    if ([[e children] count] == 0 || [[e tagName] isEqual:@"simpleType"] || [[e tagName] isEqual:@"element"])
    {
            return result;
    }
    else if ([self forElement:e areChildren:@"sequence,attribute,attributeGroup,choice,anyAttribute"])
    {
        for (Element * a in [e children])
        {
            if ([[a tagName] isEqual:@"choice"])
            {
                [result addObjectsFromArray:[self elementsFromChoice:a]];
            }
            else if ([[a tagName] isEqual:@"sequence"])
            {
                [result addObjectsFromArray:[self elementsFromSequence:a]];
            }
            else if ([[a tagName] isEqual:@"group"])
            {
                [result addObjectsFromArray:[self elementsFromGroup:[a ref]]];
            }
            else if ([[a tagName] isEqual:@"attribute"]) {}
            else if ([[a tagName] isEqual:@"attributeGroup"]) {}
            else if ([[a tagName] isEqual:@"anyAttribute"]) {}
            else {
                NSLog(@"%@", [a tagName]);
                NSAssert (false, @"unknow type expecting element/choice/group");
            }
        }
    }
    else if ([self forElement:e areChildren:@"complexContent"])
    {
        Element* complexContent = [[e children] objectAtIndex:0];
        NSAssert ([[e children] count] == 1, @"complexContent should be the only element");
        NSAssert ([[complexContent children] count] == 1, @"complexContent should have only element");

        Element* extension = [[complexContent children] objectAtIndex:0];

        if ([[extension tagName] isEqual:@"restriction"])
        {
            if (r) {
                [result addObjectsFromArray:[self elements:[self complexTypeElement:[extension base]] getSuper:r]];
            }
            return result;
        }

        NSAssert ([[extension tagName] isEqual:@"extension"], @"Only extension should be there");
        NSAssert ([extension base], @"extension should have base spec");

        if (r) {
            [result addObjectsFromArray:[self elements:[self complexTypeElement:[extension base]] getSuper:r]];
        }
        if ([[extension children] count] == 0) {
            return result;
        }
        NSAssert([self forElement:extension areChildren:@"choice,sequence,attribute,attributeGroup"], @"extension has sequence or choice");
        [result addObjectsFromArray:[self elements:extension getSuper:r]];

        return result;
    }
    else if ([self forElement:e areChildren:@"simpleContent"])
    {}
    else 
    {
        NSLog (@"Unknow %@", e);
        NSAssert (NO, @"what?");
    }
    return result;
}

- (BOOL) allResolved:(NSArray*) elements
{
    for (Element* e in elements)
    {
        if (![self objectType:[e type]])
        {
            NSLog(@"Unresolved element %@", e);
            return FALSE;
        }
    }
    return TRUE;
}

- (void) generateStructForElement:(Element*) elem
{
    if (![[elem tagName] isEqual:@"complexType"])    return;

    NSString* name = [elem name];
    if (!name) return;

    NSLog(@"Testing struct %@", [elem name]);

    Element* base = [self baseClassElement:elem];
    if (base && ![self resolved:base]) return;

    NSString* baseClassName = [self baseClass:elem];

    NSArray* attributes = [self attributes:elem getSuper:FALSE];
    NSArray* elements   = [self elements:elem getSuper:FALSE];

    NSArray* s_attributes = base ? [self attributes:base getSuper:TRUE] : [[NSArray alloc] init];
    NSArray* s_elements   = base ? [self elements:base   getSuper:TRUE] : [[NSArray alloc] init];


    [elem setResultType:[@"MPSEWS" stringByAppendingString:[[elem name] stringByAppendingString:@"*"]]];

    if ([self allResolved:attributes] &&
        [self allResolved:elements]   &&
        [self allResolved:s_attributes] &&
        [self allResolved:s_elements])
    {
        [self generateStructForElement:elem
              withAttributes:attributes withElements:elements 
              withSuperAttributes:s_attributes withSuperElements:s_elements andBaseClass:baseClassName
              simpleContentHandlerClass:[self contentHandlerClass:elem]];
    }
}

@end


