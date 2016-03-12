#import <Foundation/Foundation.h>

#import "EWSLegacyFreeBusyType.h"
@implementation EWSLegacyFreeBusyType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSLegacyFreeBusyType Free], 
                                         [EWSLegacyFreeBusyType Tentative], 
                                         [EWSLegacyFreeBusyType Busy], 
                                         [EWSLegacyFreeBusyType OOF], 
                                         [EWSLegacyFreeBusyType NoData], nil];
    [[[EWSLegacyFreeBusyType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSLegacyFreeBusyType class]];
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

