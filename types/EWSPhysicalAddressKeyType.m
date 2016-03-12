#import <Foundation/Foundation.h>

#import "EWSPhysicalAddressKeyType.h"
@implementation EWSPhysicalAddressKeyType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSPhysicalAddressKeyType Business], 
                                         [EWSPhysicalAddressKeyType Home], 
                                         [EWSPhysicalAddressKeyType Other], nil];
    [[[EWSPhysicalAddressKeyType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSPhysicalAddressKeyType class]];
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

