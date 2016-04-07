#import <Foundation/Foundation.h>

#import "MPSEWSSensitivityChoicesType.h"
@implementation MPSEWSSensitivityChoicesType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSSensitivityChoicesType Normal], 
                                         [MPSEWSSensitivityChoicesType Personal], 
                                         [MPSEWSSensitivityChoicesType Private], 
                                         [MPSEWSSensitivityChoicesType Confidential], nil];
    [[[MPSEWSSensitivityChoicesType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSSensitivityChoicesType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [enumerations containsObject:s] ? [enumerations member:s] : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    NSAssert([enumerations containsObject:obj], @"String is a enumerated list");
    [buffer appendString:((NSString*) object)];
}

+ (NSString *) Normal { return @"Normal"; }
+ (NSString *) Personal { return @"Personal"; }
+ (NSString *) Private { return @"Private"; }
+ (NSString *) Confidential { return @"Confidential"; }
@end

