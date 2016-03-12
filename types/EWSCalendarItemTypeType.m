#import <Foundation/Foundation.h>

#import "EWSCalendarItemTypeType.h"
@implementation EWSCalendarItemTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSCalendarItemTypeType Single], 
                                         [EWSCalendarItemTypeType Occurrence], 
                                         [EWSCalendarItemTypeType Exception], 
                                         [EWSCalendarItemTypeType RecurringMaster], nil];
    [[[EWSCalendarItemTypeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSCalendarItemTypeType class]];
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

