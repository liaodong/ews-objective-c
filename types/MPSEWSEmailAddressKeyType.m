#import <Foundation/Foundation.h>

#import "MPSEWSEmailAddressKeyType.h"
@implementation MPSEWSEmailAddressKeyType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSEmailAddressKeyType EmailAddress1], 
                                         [MPSEWSEmailAddressKeyType EmailAddress2], 
                                         [MPSEWSEmailAddressKeyType EmailAddress3], nil];
    [[[MPSEWSEmailAddressKeyType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSEmailAddressKeyType class]];
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

+ (NSString *) EmailAddress1 { return @"EmailAddress1"; }
+ (NSString *) EmailAddress2 { return @"EmailAddress2"; }
+ (NSString *) EmailAddress3 { return @"EmailAddress3"; }
@end

