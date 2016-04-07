#import <Foundation/Foundation.h>

#import "MPSEWSPhoneCallStateType.h"
@implementation MPSEWSPhoneCallStateType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSPhoneCallStateType Idle], 
                                         [MPSEWSPhoneCallStateType Connecting], 
                                         [MPSEWSPhoneCallStateType Alerted], 
                                         [MPSEWSPhoneCallStateType Connected], 
                                         [MPSEWSPhoneCallStateType Disconnected], 
                                         [MPSEWSPhoneCallStateType Incoming], 
                                         [MPSEWSPhoneCallStateType Transferring], 
                                         [MPSEWSPhoneCallStateType Forwarding], nil];
    [[[MPSEWSPhoneCallStateType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSPhoneCallStateType class]];
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

+ (NSString *) Idle { return @"Idle"; }
+ (NSString *) Connecting { return @"Connecting"; }
+ (NSString *) Alerted { return @"Alerted"; }
+ (NSString *) Connected { return @"Connected"; }
+ (NSString *) Disconnected { return @"Disconnected"; }
+ (NSString *) Incoming { return @"Incoming"; }
+ (NSString *) Transferring { return @"Transferring"; }
+ (NSString *) Forwarding { return @"Forwarding"; }
@end

