#import <Foundation/Foundation.h>

#import "MPSEWSDeliverMeetingRequestsType.h"
@implementation MPSEWSDeliverMeetingRequestsType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSDeliverMeetingRequestsType DelegatesOnly], 
                                         [MPSEWSDeliverMeetingRequestsType DelegatesAndMe], 
                                         [MPSEWSDeliverMeetingRequestsType DelegatesAndSendInformationToMe], 
                                         [MPSEWSDeliverMeetingRequestsType NoForward], nil];
    [[[MPSEWSDeliverMeetingRequestsType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSDeliverMeetingRequestsType class]];
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

+ (NSString *) DelegatesOnly { return @"DelegatesOnly"; }
+ (NSString *) DelegatesAndMe { return @"DelegatesAndMe"; }
+ (NSString *) DelegatesAndSendInformationToMe { return @"DelegatesAndSendInformationToMe"; }
+ (NSString *) NoForward { return @"NoForward"; }
@end

