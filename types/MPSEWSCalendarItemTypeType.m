#import <Foundation/Foundation.h>

#import "MPSEWSCalendarItemTypeType.h"
@implementation MPSEWSCalendarItemTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSCalendarItemTypeType Single], 
                                         [MPSEWSCalendarItemTypeType Occurrence], 
                                         [MPSEWSCalendarItemTypeType Exception], 
                                         [MPSEWSCalendarItemTypeType RecurringMaster], nil];
    [[[MPSEWSCalendarItemTypeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSCalendarItemTypeType class]];
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

+ (NSString *) Single { return @"Single"; }
+ (NSString *) Occurrence { return @"Occurrence"; }
+ (NSString *) Exception { return @"Exception"; }
+ (NSString *) RecurringMaster { return @"RecurringMaster"; }
@end

