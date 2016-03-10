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
                            const char* name = [[elem name] UTF8String];

                            char filename[1024];
                            sprintf (filename, "handlers/%s%s.h", prefix, name);
    
                            FILE* file = fopen (filename, "w");
                            fprintf (file, "#import <Foundation/Foundation.h>\n\n"); 
                            fprintf (file, "#import \"%sHandler.h\"", prefix);
                            fprintf (file, "\n");
                            fprintf (file, "/** %s type can be one of the following:\n", name);

                            int idx = 1;
                            for (Element *e in [child children])
                            {
                                const char* v = [[e value] UTF8String];
                                fprintf (file, " *       %d %s\n", idx++, v);
                            }
                            fprintf (file, " */\n");
                            fprintf (file, "@interface %s%s : %sHandler \n\n", prefix, name, prefix);
    
                            fprintf (file, "/** Register a handler to parse the string */\n");
                            fprintf (file, "+ (void) initialize;\n\n");
    
                            fprintf (file, "/** Process the characters from the XML document */\n");
                            fprintf (file, "- (void) characters: (NSString*) string;\n\n");
    
                            fprintf (file, "/** The value after parsing the xml stream. */\n");
                            fprintf (file, "- (NSString*) fromXml;\n\n");
    
                            fprintf (file, "/** Write to the buffer the string value */\n");
                            fprintf (file, "- (void) toXml:(NSMutableString*)buffer;\n\n");
    
                            fprintf (file, "@end\n\n");
                            fclose (file);
    
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


