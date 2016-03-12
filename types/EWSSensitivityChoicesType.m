#import <Foundation/Foundation.h>

#import "EWSSensitivityChoicesType.h"
@implementation EWSSensitivityChoicesType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSSensitivityChoicesType Normal], 
                                         [EWSSensitivityChoicesType Personal], 
                                         [EWSSensitivityChoicesType Private], 
                                         [EWSSensitivityChoicesType Confidential], nil];
    [[[EWSSensitivityChoicesType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSSensitivityChoicesType class]];
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

