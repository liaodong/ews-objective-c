#import <Foundation/Foundation.h>

#import "MPSEWSMonthNamesType.h"
@implementation MPSEWSMonthNamesType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSMonthNamesType January], 
                                         [MPSEWSMonthNamesType February], 
                                         [MPSEWSMonthNamesType March], 
                                         [MPSEWSMonthNamesType April], 
                                         [MPSEWSMonthNamesType May], 
                                         [MPSEWSMonthNamesType June], 
                                         [MPSEWSMonthNamesType July], 
                                         [MPSEWSMonthNamesType August], 
                                         [MPSEWSMonthNamesType September], 
                                         [MPSEWSMonthNamesType October], 
                                         [MPSEWSMonthNamesType November], 
                                         [MPSEWSMonthNamesType December], nil];
    [[[MPSEWSMonthNamesType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSMonthNamesType class]];
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

