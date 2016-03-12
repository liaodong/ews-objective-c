#import <Foundation/Foundation.h>

#import "EWSAffectedTaskOccurrencesType.h"
@implementation EWSAffectedTaskOccurrencesType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSAffectedTaskOccurrencesType AllOccurrences], 
                                         [EWSAffectedTaskOccurrencesType SpecifiedOccurrenceOnly], nil];
    [[[EWSAffectedTaskOccurrencesType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSAffectedTaskOccurrencesType class]];
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

