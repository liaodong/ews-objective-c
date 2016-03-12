#import <Foundation/Foundation.h>

#import "EWSMeetingAttendeeType.h"
@implementation EWSMeetingAttendeeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSMeetingAttendeeType Organizer], 
                                         [EWSMeetingAttendeeType Required], 
                                         [EWSMeetingAttendeeType Optional], 
                                         [EWSMeetingAttendeeType Room], 
                                         [EWSMeetingAttendeeType Resource], nil];
    [[[EWSMeetingAttendeeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSMeetingAttendeeType class]];
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

+ (NSString *) Organizer { return @"Organizer"; }
+ (NSString *) Required { return @"Required"; }
+ (NSString *) Optional { return @"Optional"; }
+ (NSString *) Room { return @"Room"; }
+ (NSString *) Resource { return @"Resource"; }
@end

