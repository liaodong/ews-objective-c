#import <Foundation/Foundation.h>

#import "EWSMeetingRequestTypeType.h"
@implementation EWSMeetingRequestTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSMeetingRequestTypeType None], 
                                         [EWSMeetingRequestTypeType FullUpdate], 
                                         [EWSMeetingRequestTypeType InformationalUpdate], 
                                         [EWSMeetingRequestTypeType NewMeetingRequest], 
                                         [EWSMeetingRequestTypeType Outdated], 
                                         [EWSMeetingRequestTypeType SilentUpdate], 
                                         [EWSMeetingRequestTypeType PrincipalWantsCopy], nil];
    [[[EWSMeetingRequestTypeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSMeetingRequestTypeType class]];
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
+ (NSString *) FullUpdate { return @"FullUpdate"; }
+ (NSString *) InformationalUpdate { return @"InformationalUpdate"; }
+ (NSString *) NewMeetingRequest { return @"NewMeetingRequest"; }
+ (NSString *) Outdated { return @"Outdated"; }
+ (NSString *) SilentUpdate { return @"SilentUpdate"; }
+ (NSString *) PrincipalWantsCopy { return @"PrincipalWantsCopy"; }
@end

