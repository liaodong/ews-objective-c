#import "MPSEWSBooleanTypeHandler.h"


@implementation MPSEWSBooleanTypeHandler 

+ (void) initialize
{
    [[[MPSEWSBooleanTypeHandler alloc] init] register];
}
 + (BOOL) isValid:(NSNumber*) val
 {
    (void) val;
    return TRUE;
 }

- (id)initWithClass: (Class)cls
{
    return [super initWithClass:cls];
}

- (id) init
{
    return [super initWithClass:[MPSEWSBooleanTypeHandler class]];
}

- (NSNumber*) constructWithAttributes: (NSDictionary*) attributeDict
{
    return nil;
}

- (NSNumber*) construct
{
    return nil;
}

- (BOOL) boolValue:(NSString*) s
{
    return NSOrderedSame == [s caseInsensitiveCompare:@"TRUE"] || NSOrderedSame == [s caseInsensitiveCompare:@"T"]  || NSOrderedSame == [s caseInsensitiveCompare:@"1"];
}
 
- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*)s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return s && [s length] > 1 ? [NSNumber numberWithBool:[self boolValue:s]] : obj;
}
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object
{
    NSString* s = [object boolValue] ? @"True" : @"False";
    [buffer appendString:s];
}
 

@end
