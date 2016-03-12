#import <Foundation/Foundation.h>

#import "EWSEmailAddressKeyType.h"
@implementation EWSEmailAddressKeyType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSEmailAddressKeyType EmailAddress1], 
                                         [EWSEmailAddressKeyType EmailAddress2], 
                                         [EWSEmailAddressKeyType EmailAddress3], nil];
    [[[EWSEmailAddressKeyType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSEmailAddressKeyType class]];
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

