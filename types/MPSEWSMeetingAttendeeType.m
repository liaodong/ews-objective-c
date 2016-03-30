#import <Foundation/Foundation.h>

#import "MPSEWSMeetingAttendeeType.h"
@implementation MPSEWSMeetingAttendeeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSMeetingAttendeeType Organizer], 
                                         [MPSEWSMeetingAttendeeType Required], 
                                         [MPSEWSMeetingAttendeeType Optional], 
                                         [MPSEWSMeetingAttendeeType Room], 
                                         [MPSEWSMeetingAttendeeType Resource], nil];
    [[[MPSEWSMeetingAttendeeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSMeetingAttendeeType class]];
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

