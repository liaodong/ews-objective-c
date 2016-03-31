#import <Foundation/Foundation.h>

#import "MPSEWSFlaggedForActionType.h"
@implementation MPSEWSFlaggedForActionType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSFlaggedForActionType Any], 
                                         [MPSEWSFlaggedForActionType Call], 
                                         [MPSEWSFlaggedForActionType DoNotForward], 
                                         [MPSEWSFlaggedForActionType FollowUp], 
                                         [MPSEWSFlaggedForActionType FYI], 
                                         [MPSEWSFlaggedForActionType Forward], 
                                         [MPSEWSFlaggedForActionType NoResponseNecessary], 
                                         [MPSEWSFlaggedForActionType Read], 
                                         [MPSEWSFlaggedForActionType Reply], 
                                         [MPSEWSFlaggedForActionType ReplyToAll], 
                                         [MPSEWSFlaggedForActionType Review], nil];
    [[[MPSEWSFlaggedForActionType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSFlaggedForActionType class]];
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

+ (NSString *) Any { return @"Any"; }
+ (NSString *) Call { return @"Call"; }
+ (NSString *) DoNotForward { return @"DoNotForward"; }
+ (NSString *) FollowUp { return @"FollowUp"; }
+ (NSString *) FYI { return @"FYI"; }
+ (NSString *) Forward { return @"Forward"; }
+ (NSString *) NoResponseNecessary { return @"NoResponseNecessary"; }
+ (NSString *) Read { return @"Read"; }
+ (NSString *) Reply { return @"Reply"; }
+ (NSString *) ReplyToAll { return @"ReplyToAll"; }
+ (NSString *) Review { return @"Review"; }
@end

