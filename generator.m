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

- (void)parser:(NSXMLParser*)parser didStartElement:(NSString*)elementName namespaceURI:(NSString*)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *) attributeDict
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

- (BOOL) forElement:(Element*) elem areChildren:(NSString*) name
{
    for (Element *e in [elem children]) {
        if (! ([[e tagName] isEqual: name])) return false;
    }
    return true;
}

static const char* prefix = "EWS";

- (void) simpleEnumeratedString:(Element*) elem
{
    Element* child = [[elem children] objectAtIndex: 0];

    const char* name = [[elem name] UTF8String];

    char filename[1024];
    sprintf (filename, "types/%s%s.h", prefix, name);
    
    FILE* file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"handlers/%sSimpleTypeHandler.h\"", prefix);
    fprintf (file, "\n\n\n");
    fprintf (file, "/** %s type can be one of the following:\n", name);

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

    fprintf (file, "/** Construct the object */\n");
    fprintf (file, "- (id) construct;\n\n");

    fprintf (file, "/** Process the characters */\n");
    fprintf (file, "- (id) updateObject:(id)obj withCharacters:(NSString*)s;\n\n");
    
    fprintf (file, "/** Write to the buffer the string value */\n");
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer forObject:(id) object;\n\n");
    
    fprintf (file, "@end\n\n");
    fclose (file);

    sprintf (filename, "types/%s%s.m", prefix, name);
    
    file = fopen (filename, "w");
    fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
    fprintf (file, "#import \"%s%s.h\"", prefix, name);
    fprintf (file, "\n");
    fprintf (file, "@implementation %s%s \n\n", prefix, name);
    
    fprintf (file, "+ (void) initialize\n");
    fprintf (file, "{\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) init\n");
    fprintf (file, "{\n");
    fprintf (file, "    self = [super init];\n");
    fprintf (file, "    return self;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) construct\n");
    fprintf (file, "{\n");
    fprintf (file, "    return nil;\n");
    fprintf (file, "}\n\n");

    fprintf (file, "- (id) updateObject:(id)obj withCharacters:(NSString*) s\n");
    fprintf (file, "{\n");
    fprintf (file, "    return s;\n");
    fprintf (file, "}\n\n");
   
    fprintf (file, "- (void) writeXmlInto:(NSMutableString*)buffer forObject:(id) object\n");
    fprintf (file, "{\n");
    fprintf (file, "    [buffer appendString:((NSString*) object)];\n"); 
    fprintf (file, "}\n\n");
    
    fprintf (file, "@end\n\n");
    fclose (file);
}

- (void) generateStrings
{
    NSString* simpleType = @"simpleType";

    for (Element* elem in [current children])
    {
        if ([[elem tagName] isEqual:simpleType]) {
            if ([[elem children] count] == 1)
            {
                Element* child = [[elem children] objectAtIndex: 0];
                if ([[child tagName] isEqual:@"restriction"]) {
                    if ([[child base] isEqual:@"xs:string"]) {
                        if ([self forElement:child areChildren:@"enumeration"]) {

                            [self simpleEnumeratedString:elem];
                            [elem setResultType:@"NSString*"];
                        }
                        else NSLog(@"string type is not enumeration %@ %@", [elem tagName], [elem name]);
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

- (void) generate
{
    [self generateStrings];
}

@end


