#import <Foundation/Foundation.h>

#import "MPSEWSConflictResolutionType.h"
@implementation MPSEWSConflictResolutionType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSConflictResolutionType NeverOverwrite], 
                                         [MPSEWSConflictResolutionType AutoResolve], 
                                         [MPSEWSConflictResolutionType AlwaysOverwrite], nil];
    [[[MPSEWSConflictResolutionType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSConflictResolutionType class]];
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

+ (NSString *) NeverOverwrite { return @"NeverOverwrite"; }
+ (NSString *) AutoResolve { return @"AutoResolve"; }
+ (NSString *) AlwaysOverwrite { return @"AlwaysOverwrite"; }
@end

