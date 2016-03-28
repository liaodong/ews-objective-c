#import <Foundation/Foundation.h>

#import "MPSEWSImAddressKeyType.h"
@implementation MPSEWSImAddressKeyType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSImAddressKeyType ImAddress1], 
                                         [MPSEWSImAddressKeyType ImAddress2], 
                                         [MPSEWSImAddressKeyType ImAddress3], nil];
    [[[MPSEWSImAddressKeyType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSImAddressKeyType class]];
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

+ (NSString *) ImAddress1 { return @"ImAddress1"; }
+ (NSString *) ImAddress2 { return @"ImAddress2"; }
+ (NSString *) ImAddress3 { return @"ImAddress3"; }
@end

