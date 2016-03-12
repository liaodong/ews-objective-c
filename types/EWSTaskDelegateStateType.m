#import <Foundation/Foundation.h>

#import "EWSTaskDelegateStateType.h"
@implementation EWSTaskDelegateStateType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSTaskDelegateStateType NoMatch], 
                                         [EWSTaskDelegateStateType OwnNew], 
                                         [EWSTaskDelegateStateType Owned], 
                                         [EWSTaskDelegateStateType Accepted], 
                                         [EWSTaskDelegateStateType Declined], 
                                         [EWSTaskDelegateStateType Max], nil];
    [[[EWSTaskDelegateStateType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSTaskDelegateStateType class]];
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

