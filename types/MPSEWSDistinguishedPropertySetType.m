#import <Foundation/Foundation.h>

#import "MPSEWSDistinguishedPropertySetType.h"
@implementation MPSEWSDistinguishedPropertySetType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSDistinguishedPropertySetType Meeting], 
                                         [MPSEWSDistinguishedPropertySetType Appointment], 
                                         [MPSEWSDistinguishedPropertySetType Common], 
                                         [MPSEWSDistinguishedPropertySetType PublicStrings], 
                                         [MPSEWSDistinguishedPropertySetType Address], 
                                         [MPSEWSDistinguishedPropertySetType InternetHeaders], 
                                         [MPSEWSDistinguishedPropertySetType CalendarAssistant], 
                                         [MPSEWSDistinguishedPropertySetType UnifiedMessaging], 
                                         [MPSEWSDistinguishedPropertySetType Task], nil];
    [[[MPSEWSDistinguishedPropertySetType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSDistinguishedPropertySetType class]];
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

