#import <Foundation/Foundation.h>

#import "MPSEWSMeetingRequestTypeType.h"
@implementation MPSEWSMeetingRequestTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSMeetingRequestTypeType None], 
                                         [MPSEWSMeetingRequestTypeType FullUpdate], 
                                         [MPSEWSMeetingRequestTypeType InformationalUpdate], 
                                         [MPSEWSMeetingRequestTypeType NewMeetingRequest], 
                                         [MPSEWSMeetingRequestTypeType Outdated], 
                                         [MPSEWSMeetingRequestTypeType SilentUpdate], 
                                         [MPSEWSMeetingRequestTypeType PrincipalWantsCopy], nil];
    [[[MPSEWSMeetingRequestTypeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSMeetingRequestTypeType class]];
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

