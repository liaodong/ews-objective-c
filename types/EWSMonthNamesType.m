#import <Foundation/Foundation.h>

#import "EWSMonthNamesType.h"
@implementation EWSMonthNamesType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSMonthNamesType January], 
                                         [EWSMonthNamesType February], 
                                         [EWSMonthNamesType March], 
                                         [EWSMonthNamesType April], 
                                         [EWSMonthNamesType May], 
                                         [EWSMonthNamesType June], 
                                         [EWSMonthNamesType July], 
                                         [EWSMonthNamesType August], 
                                         [EWSMonthNamesType September], 
                                         [EWSMonthNamesType October], 
                                         [EWSMonthNamesType November], 
                                         [EWSMonthNamesType December], nil];
    [[[EWSMonthNamesType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSMonthNamesType class]];
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

+ (NSString *) January { return @"January"; }
+ (NSString *) February { return @"February"; }
+ (NSString *) March { return @"March"; }
+ (NSString *) April { return @"April"; }
+ (NSString *) May { return @"May"; }
+ (NSString *) June { return @"June"; }
+ (NSString *) July { return @"July"; }
+ (NSString *) August { return @"August"; }
+ (NSString *) September { return @"September"; }
+ (NSString *) October { return @"October"; }
+ (NSString *) November { return @"November"; }
+ (NSString *) December { return @"December"; }
@end

