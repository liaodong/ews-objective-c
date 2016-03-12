#import <Foundation/Foundation.h>

#import "EWSCalendarPermissionReadAccessType.h"
@implementation EWSCalendarPermissionReadAccessType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSCalendarPermissionReadAccessType None], 
                                         [EWSCalendarPermissionReadAccessType TimeOnly], 
                                         [EWSCalendarPermissionReadAccessType TimeAndSubjectAndLocation], 
                                         [EWSCalendarPermissionReadAccessType FullDetails], nil];
    [[[EWSCalendarPermissionReadAccessType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSCalendarPermissionReadAccessType class]];
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

+ (NSString *) None { return @"None"; }
+ (NSString *) TimeOnly { return @"TimeOnly"; }
+ (NSString *) TimeAndSubjectAndLocation { return @"TimeAndSubjectAndLocation"; }
+ (NSString *) FullDetails { return @"FullDetails"; }
@end

