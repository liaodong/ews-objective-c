#import <Foundation/Foundation.h>

#import "EWSTaskStatusType.h"
@implementation EWSTaskStatusType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSTaskStatusType NotStarted], 
                                         [EWSTaskStatusType InProgress], 
                                         [EWSTaskStatusType Completed], 
                                         [EWSTaskStatusType WaitingOnOthers], 
                                         [EWSTaskStatusType Deferred], nil];
    [[[EWSTaskStatusType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSTaskStatusType class]];
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

+ (NSString *) NotStarted { return @"NotStarted"; }
+ (NSString *) InProgress { return @"InProgress"; }
+ (NSString *) Completed { return @"Completed"; }
+ (NSString *) WaitingOnOthers { return @"WaitingOnOthers"; }
+ (NSString *) Deferred { return @"Deferred"; }
@end

