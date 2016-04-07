#import <Foundation/Foundation.h>

#import "MPSEWSLegacyFreeBusyType.h"
@implementation MPSEWSLegacyFreeBusyType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSLegacyFreeBusyType Free], 
                                         [MPSEWSLegacyFreeBusyType Tentative], 
                                         [MPSEWSLegacyFreeBusyType Busy], 
                                         [MPSEWSLegacyFreeBusyType OOF], 
                                         [MPSEWSLegacyFreeBusyType NoData], nil];
    [[[MPSEWSLegacyFreeBusyType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSLegacyFreeBusyType class]];
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

+ (NSString *) Free { return @"Free"; }
+ (NSString *) Tentative { return @"Tentative"; }
+ (NSString *) Busy { return @"Busy"; }
+ (NSString *) OOF { return @"OOF"; }
+ (NSString *) NoData { return @"NoData"; }
@end

