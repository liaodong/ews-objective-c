#import <Foundation/Foundation.h>

#import "MPSEWSTaskStatusType.h"
@implementation MPSEWSTaskStatusType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSTaskStatusType NotStarted], 
                                         [MPSEWSTaskStatusType InProgress], 
                                         [MPSEWSTaskStatusType Completed], 
                                         [MPSEWSTaskStatusType WaitingOnOthers], 
                                         [MPSEWSTaskStatusType Deferred], nil];
    [[[MPSEWSTaskStatusType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSTaskStatusType class]];
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

