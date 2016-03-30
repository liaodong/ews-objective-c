#import <Foundation/Foundation.h>

#import "MPSEWSOofState.h"
@implementation MPSEWSOofState /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSOofState Disabled], 
                                         [MPSEWSOofState Enabled], 
                                         [MPSEWSOofState Scheduled], nil];
    [[[MPSEWSOofState alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSOofState class]];
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

+ (NSString *) Disabled { return @"Disabled"; }
+ (NSString *) Enabled { return @"Enabled"; }
+ (NSString *) Scheduled { return @"Scheduled"; }
@end

