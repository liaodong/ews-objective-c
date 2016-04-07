#import <Foundation/Foundation.h>

#import "MPSEWSDerivedItemIdType.h"
@implementation MPSEWSDerivedItemIdType /* SimpleType */

+ (void) initialize
{
    [[[MPSEWSDerivedItemIdType alloc] init] register];
}

+ (BOOL) isValid: (NSString *) val forVersion:(MPSEWSExchangeVersion) ver
{
    (void) val;
    return TRUE;
}

- (id) init
{
    self = [super initWithClass:[MPSEWSDerivedItemIdType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSString *) construct
{
    return [[NSString alloc] init];
}

- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [s length] > 0 ? s : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    [buffer appendString:obj];
}

@end

