#import <Foundation/Foundation.h>

#import "EWSDeliverMeetingRequestsType.h"
@implementation EWSDeliverMeetingRequestsType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSDeliverMeetingRequestsType DelegatesOnly], 
                                         [EWSDeliverMeetingRequestsType DelegatesAndMe], 
                                         [EWSDeliverMeetingRequestsType DelegatesAndSendInformationToMe], nil];
    [[[EWSDeliverMeetingRequestsType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSDeliverMeetingRequestsType class]];
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
@end

