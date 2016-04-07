#import <Foundation/Foundation.h>

#import "MPSEWSSearchItemKindType.h"
@implementation MPSEWSSearchItemKindType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSSearchItemKindType Email], 
                                         [MPSEWSSearchItemKindType Meetings], 
                                         [MPSEWSSearchItemKindType Tasks], 
                                         [MPSEWSSearchItemKindType Notes], 
                                         [MPSEWSSearchItemKindType Docs], 
                                         [MPSEWSSearchItemKindType Journals], 
                                         [MPSEWSSearchItemKindType Contacts], 
                                         [MPSEWSSearchItemKindType Im], 
                                         [MPSEWSSearchItemKindType Voicemail], 
                                         [MPSEWSSearchItemKindType Faxes], 
                                         [MPSEWSSearchItemKindType Posts], 
                                         [MPSEWSSearchItemKindType Rssfeeds], nil];
    [[[MPSEWSSearchItemKindType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSSearchItemKindType class]];
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

+ (NSString *) Email { return @"Email"; }
+ (NSString *) Meetings { return @"Meetings"; }
+ (NSString *) Tasks { return @"Tasks"; }
+ (NSString *) Notes { return @"Notes"; }
+ (NSString *) Docs { return @"Docs"; }
+ (NSString *) Journals { return @"Journals"; }
+ (NSString *) Contacts { return @"Contacts"; }
+ (NSString *) Im { return @"Im"; }
+ (NSString *) Voicemail { return @"Voicemail"; }
+ (NSString *) Faxes { return @"Faxes"; }
+ (NSString *) Posts { return @"Posts"; }
+ (NSString *) Rssfeeds { return @"Rssfeeds"; }
@end

