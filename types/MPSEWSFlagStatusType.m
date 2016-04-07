#import <Foundation/Foundation.h>

#import "MPSEWSFlagStatusType.h"
@implementation MPSEWSFlagStatusType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSFlagStatusType NotFlagged], 
                                         [MPSEWSFlagStatusType Flagged], 
                                         [MPSEWSFlagStatusType Complete], nil];
    [[[MPSEWSFlagStatusType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSFlagStatusType class]];
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

+ (NSString *) NotFlagged { return @"NotFlagged"; }
+ (NSString *) Flagged { return @"Flagged"; }
+ (NSString *) Complete { return @"Complete"; }
@end

