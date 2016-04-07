#import "MPSEWSBase64BinaryTypeHandler.h"


@implementation MPSEWSBase64BinaryTypeHandler 

+ (void) initialize
{
    [[[MPSEWSBase64BinaryTypeHandler alloc] init] register];
}
+ (BOOL) isValid:(NSData*) val forVersion:(MPSEWSExchangeVersion) ver
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
    return [super initWithClass:[MPSEWSBase64BinaryTypeHandler class]];
}

- (NSString*) construct
{
    return [[NSMutableString alloc] init];
}
 
- (NSString*) updateObject:(NSString*)obj withCharacters:(NSString*)s
{
    NSMutableString* str = (NSMutableString*) obj;
    [str appendString:s];
    return obj;
}
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString*) object
{
    [buffer appendString:object];
}
 

@end
