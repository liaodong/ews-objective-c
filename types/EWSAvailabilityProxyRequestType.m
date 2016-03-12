#import <Foundation/Foundation.h>

#import "EWSAvailabilityProxyRequestType.h"
@implementation EWSAvailabilityProxyRequestType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSAvailabilityProxyRequestType CrossSite], 
                                         [EWSAvailabilityProxyRequestType CrossForest], nil];
    [[[EWSAvailabilityProxyRequestType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSAvailabilityProxyRequestType class]];
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

+ (NSString *) CrossSite { return @"CrossSite"; }
+ (NSString *) CrossForest { return @"CrossForest"; }
@end

