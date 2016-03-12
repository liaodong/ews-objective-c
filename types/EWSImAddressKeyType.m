#import <Foundation/Foundation.h>

#import "EWSImAddressKeyType.h"
@implementation EWSImAddressKeyType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSImAddressKeyType ImAddress1], 
                                         [EWSImAddressKeyType ImAddress2], 
                                         [EWSImAddressKeyType ImAddress3], nil];
    [[[EWSImAddressKeyType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSImAddressKeyType class]];
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

