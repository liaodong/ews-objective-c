#import <Foundation/Foundation.h>

#import "MPSEWSExceptionPropertyURIType.h"
@implementation MPSEWSExceptionPropertyURIType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSExceptionPropertyURIType attachment_Name], 
                                         [MPSEWSExceptionPropertyURIType attachment_ContentType], 
                                         [MPSEWSExceptionPropertyURIType attachment_Content], 
                                         [MPSEWSExceptionPropertyURIType recurrence_Month], 
                                         [MPSEWSExceptionPropertyURIType recurrence_DayOfWeekIndex], 
                                         [MPSEWSExceptionPropertyURIType recurrence_DaysOfWeek], 
                                         [MPSEWSExceptionPropertyURIType recurrence_DayOfMonth], 
                                         [MPSEWSExceptionPropertyURIType recurrence_Interval], 
                                         [MPSEWSExceptionPropertyURIType recurrence_NumberOfOccurrences], 
                                         [MPSEWSExceptionPropertyURIType timezone_Offset], nil];
    [[[MPSEWSExceptionPropertyURIType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSExceptionPropertyURIType class]];
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

