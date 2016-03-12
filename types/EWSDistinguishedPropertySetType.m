#import <Foundation/Foundation.h>

#import "EWSDistinguishedPropertySetType.h"
@implementation EWSDistinguishedPropertySetType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSDistinguishedPropertySetType Meeting], 
                                         [EWSDistinguishedPropertySetType Appointment], 
                                         [EWSDistinguishedPropertySetType Common], 
                                         [EWSDistinguishedPropertySetType PublicStrings], 
                                         [EWSDistinguishedPropertySetType Address], 
                                         [EWSDistinguishedPropertySetType InternetHeaders], 
                                         [EWSDistinguishedPropertySetType CalendarAssistant], 
                                         [EWSDistinguishedPropertySetType UnifiedMessaging], 
                                         [EWSDistinguishedPropertySetType Task], nil];
    [[[EWSDistinguishedPropertySetType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSDistinguishedPropertySetType class]];
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

+ (NSString *) Meeting { return @"Meeting"; }
+ (NSString *) Appointment { return @"Appointment"; }
+ (NSString *) Common { return @"Common"; }
+ (NSString *) PublicStrings { return @"PublicStrings"; }
+ (NSString *) Address { return @"Address"; }
+ (NSString *) InternetHeaders { return @"InternetHeaders"; }
+ (NSString *) CalendarAssistant { return @"CalendarAssistant"; }
+ (NSString *) UnifiedMessaging { return @"UnifiedMessaging"; }
+ (NSString *) Task { return @"Task"; }
@end

