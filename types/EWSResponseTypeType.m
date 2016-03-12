#import <Foundation/Foundation.h>

#import "EWSResponseTypeType.h"
@implementation EWSResponseTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSResponseTypeType Unknown], 
                                         [EWSResponseTypeType Organizer], 
                                         [EWSResponseTypeType Tentative], 
                                         [EWSResponseTypeType Accept], 
                                         [EWSResponseTypeType Decline], 
                                         [EWSResponseTypeType NoResponseReceived], nil];
    [[[EWSResponseTypeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSResponseTypeType class]];
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

