#import <Foundation/Foundation.h>

#import "MPSEWSAffectedTaskOccurrencesType.h"
@implementation MPSEWSAffectedTaskOccurrencesType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSAffectedTaskOccurrencesType AllOccurrences], 
                                         [MPSEWSAffectedTaskOccurrencesType SpecifiedOccurrenceOnly], nil];
    [[[MPSEWSAffectedTaskOccurrencesType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSAffectedTaskOccurrencesType class]];
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

+ (NSString *) AllOccurrences { return @"AllOccurrences"; }
+ (NSString *) SpecifiedOccurrenceOnly { return @"SpecifiedOccurrenceOnly"; }
@end

