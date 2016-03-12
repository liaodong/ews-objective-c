#import <Foundation/Foundation.h>

#import "EWSAggregateType.h"
@implementation EWSAggregateType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSAggregateType Minimum], 
                                         [EWSAggregateType Maximum], nil];
    [[[EWSAggregateType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSAggregateType class]];
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

+ (NSString *) Minimum { return @"Minimum"; }
+ (NSString *) Maximum { return @"Maximum"; }
@end

