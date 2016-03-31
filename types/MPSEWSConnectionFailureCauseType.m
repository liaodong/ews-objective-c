#import <Foundation/Foundation.h>

#import "MPSEWSConnectionFailureCauseType.h"
@implementation MPSEWSConnectionFailureCauseType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSConnectionFailureCauseType None], 
                                         [MPSEWSConnectionFailureCauseType UserBusy], 
                                         [MPSEWSConnectionFailureCauseType NoAnswer], 
                                         [MPSEWSConnectionFailureCauseType Unavailable], 
                                         [MPSEWSConnectionFailureCauseType Other], nil];
    [[[MPSEWSConnectionFailureCauseType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSConnectionFailureCauseType class]];
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

+ (NSString *) None { return @"None"; }
+ (NSString *) UserBusy { return @"UserBusy"; }
+ (NSString *) NoAnswer { return @"NoAnswer"; }
+ (NSString *) Unavailable { return @"Unavailable"; }
+ (NSString *) Other { return @"Other"; }
@end

