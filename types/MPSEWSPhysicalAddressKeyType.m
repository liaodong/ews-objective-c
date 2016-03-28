#import <Foundation/Foundation.h>

#import "MPSEWSPhysicalAddressKeyType.h"
@implementation MPSEWSPhysicalAddressKeyType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSPhysicalAddressKeyType Business], 
                                         [MPSEWSPhysicalAddressKeyType Home], 
                                         [MPSEWSPhysicalAddressKeyType Other], nil];
    [[[MPSEWSPhysicalAddressKeyType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSPhysicalAddressKeyType class]];
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

+ (NSString *) Business { return @"Business"; }
+ (NSString *) Home { return @"Home"; }
+ (NSString *) Other { return @"Other"; }
@end

