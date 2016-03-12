#import <Foundation/Foundation.h>

#import "EWSContainmentComparisonType.h"
@implementation EWSContainmentComparisonType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSContainmentComparisonType Exact], 
                                         [EWSContainmentComparisonType IgnoreCase], 
                                         [EWSContainmentComparisonType IgnoreNonSpacingCharacters], 
                                         [EWSContainmentComparisonType Loose], 
                                         [EWSContainmentComparisonType IgnoreCaseAndNonSpacingCharacters], 
                                         [EWSContainmentComparisonType LooseAndIgnoreCase], 
                                         [EWSContainmentComparisonType LooseAndIgnoreNonSpace], 
                                         [EWSContainmentComparisonType LooseAndIgnoreCaseAndIgnoreNonSpace], nil];
    [[[EWSContainmentComparisonType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSContainmentComparisonType class]];
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

