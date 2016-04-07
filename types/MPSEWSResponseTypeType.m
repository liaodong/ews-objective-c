#import <Foundation/Foundation.h>

#import "MPSEWSResponseTypeType.h"
@implementation MPSEWSResponseTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSResponseTypeType Unknown], 
                                         [MPSEWSResponseTypeType Organizer], 
                                         [MPSEWSResponseTypeType Tentative], 
                                         [MPSEWSResponseTypeType Accept], 
                                         [MPSEWSResponseTypeType Decline], 
                                         [MPSEWSResponseTypeType NoResponseReceived], nil];
    [[[MPSEWSResponseTypeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSResponseTypeType class]];
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

+ (NSString *) Unknown { return @"Unknown"; }
+ (NSString *) Organizer { return @"Organizer"; }
+ (NSString *) Tentative { return @"Tentative"; }
+ (NSString *) Accept { return @"Accept"; }
+ (NSString *) Decline { return @"Decline"; }
+ (NSString *) NoResponseReceived { return @"NoResponseReceived"; }
@end

