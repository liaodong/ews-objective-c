#import <Foundation/Foundation.h>

#import "MPSEWSTaskDelegateStateType.h"
@implementation MPSEWSTaskDelegateStateType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSTaskDelegateStateType NoMatch], 
                                         [MPSEWSTaskDelegateStateType OwnNew], 
                                         [MPSEWSTaskDelegateStateType Owned], 
                                         [MPSEWSTaskDelegateStateType Accepted], 
                                         [MPSEWSTaskDelegateStateType Declined], 
                                         [MPSEWSTaskDelegateStateType Max], nil];
    [[[MPSEWSTaskDelegateStateType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSTaskDelegateStateType class]];
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

+ (NSString *) NoMatch { return @"NoMatch"; }
+ (NSString *) OwnNew { return @"OwnNew"; }
+ (NSString *) Owned { return @"Owned"; }
+ (NSString *) Accepted { return @"Accepted"; }
+ (NSString *) Declined { return @"Declined"; }
+ (NSString *) Max { return @"Max"; }
@end

