#import <Foundation/Foundation.h>

#import "MPSEWSContainmentComparisonType.h"
@implementation MPSEWSContainmentComparisonType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSContainmentComparisonType Exact], 
                                         [MPSEWSContainmentComparisonType IgnoreCase], 
                                         [MPSEWSContainmentComparisonType IgnoreNonSpacingCharacters], 
                                         [MPSEWSContainmentComparisonType Loose], 
                                         [MPSEWSContainmentComparisonType IgnoreCaseAndNonSpacingCharacters], 
                                         [MPSEWSContainmentComparisonType LooseAndIgnoreCase], 
                                         [MPSEWSContainmentComparisonType LooseAndIgnoreNonSpace], 
                                         [MPSEWSContainmentComparisonType LooseAndIgnoreCaseAndIgnoreNonSpace], nil];
    [[[MPSEWSContainmentComparisonType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSContainmentComparisonType class]];
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

+ (NSString *) Exact { return @"Exact"; }
+ (NSString *) IgnoreCase { return @"IgnoreCase"; }
+ (NSString *) IgnoreNonSpacingCharacters { return @"IgnoreNonSpacingCharacters"; }
+ (NSString *) Loose { return @"Loose"; }
+ (NSString *) IgnoreCaseAndNonSpacingCharacters { return @"IgnoreCaseAndNonSpacingCharacters"; }
+ (NSString *) LooseAndIgnoreCase { return @"LooseAndIgnoreCase"; }
+ (NSString *) LooseAndIgnoreNonSpace { return @"LooseAndIgnoreNonSpace"; }
+ (NSString *) LooseAndIgnoreCaseAndIgnoreNonSpace { return @"LooseAndIgnoreCaseAndIgnoreNonSpace"; }
@end

