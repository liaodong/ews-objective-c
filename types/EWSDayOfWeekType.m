#import <Foundation/Foundation.h>

#import "EWSDayOfWeekType.h"
@implementation EWSDayOfWeekType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSDayOfWeekType Sunday], 
                                         [EWSDayOfWeekType Monday], 
                                         [EWSDayOfWeekType Tuesday], 
                                         [EWSDayOfWeekType Wednesday], 
                                         [EWSDayOfWeekType Thursday], 
                                         [EWSDayOfWeekType Friday], 
                                         [EWSDayOfWeekType Saturday], 
                                         [EWSDayOfWeekType Day], 
                                         [EWSDayOfWeekType Weekday], 
                                         [EWSDayOfWeekType WeekendDay], nil];
    [[[EWSDayOfWeekType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSDayOfWeekType class]];
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

+ (NSString *) Sunday { return @"Sunday"; }
+ (NSString *) Monday { return @"Monday"; }
+ (NSString *) Tuesday { return @"Tuesday"; }
+ (NSString *) Wednesday { return @"Wednesday"; }
+ (NSString *) Thursday { return @"Thursday"; }
+ (NSString *) Friday { return @"Friday"; }
+ (NSString *) Saturday { return @"Saturday"; }
+ (NSString *) Day { return @"Day"; }
+ (NSString *) Weekday { return @"Weekday"; }
+ (NSString *) WeekendDay { return @"WeekendDay"; }
@end

