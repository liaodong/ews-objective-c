#import <Foundation/Foundation.h>

#import "EWSExceptionPropertyURIType.h"
@implementation EWSExceptionPropertyURIType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSExceptionPropertyURIType attachment_Name], 
                                         [EWSExceptionPropertyURIType attachment_ContentType], 
                                         [EWSExceptionPropertyURIType attachment_Content], 
                                         [EWSExceptionPropertyURIType recurrence_Month], 
                                         [EWSExceptionPropertyURIType recurrence_DayOfWeekIndex], 
                                         [EWSExceptionPropertyURIType recurrence_DaysOfWeek], 
                                         [EWSExceptionPropertyURIType recurrence_DayOfMonth], 
                                         [EWSExceptionPropertyURIType recurrence_Interval], 
                                         [EWSExceptionPropertyURIType recurrence_NumberOfOccurrences], 
                                         [EWSExceptionPropertyURIType timezone_Offset], nil];
    [[[EWSExceptionPropertyURIType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSExceptionPropertyURIType class]];
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

+ (NSString *) attachment_Name { return @"attachment:Name"; }
+ (NSString *) attachment_ContentType { return @"attachment:ContentType"; }
+ (NSString *) attachment_Content { return @"attachment:Content"; }
+ (NSString *) recurrence_Month { return @"recurrence:Month"; }
+ (NSString *) recurrence_DayOfWeekIndex { return @"recurrence:DayOfWeekIndex"; }
+ (NSString *) recurrence_DaysOfWeek { return @"recurrence:DaysOfWeek"; }
+ (NSString *) recurrence_DayOfMonth { return @"recurrence:DayOfMonth"; }
+ (NSString *) recurrence_Interval { return @"recurrence:Interval"; }
+ (NSString *) recurrence_NumberOfOccurrences { return @"recurrence:NumberOfOccurrences"; }
+ (NSString *) timezone_Offset { return @"timezone:Offset"; }
@end

