#import <Foundation/Foundation.h>

#import "EWSConflictResolutionType.h"
@implementation EWSConflictResolutionType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSConflictResolutionType NeverOverwrite], 
                                         [EWSConflictResolutionType AutoResolve], 
                                         [EWSConflictResolutionType AlwaysOverwrite], nil];
    [[[EWSConflictResolutionType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSConflictResolutionType class]];
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

