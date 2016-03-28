#import <Foundation/Foundation.h>

#import "MPSEWSResponseClassType.h"
@implementation MPSEWSResponseClassType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSResponseClassType Success], 
                                         [MPSEWSResponseClassType Warning], 
                                         [MPSEWSResponseClassType Error], nil];
    [[[MPSEWSResponseClassType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSResponseClassType class]];
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

+ (NSString *) Success { return @"Success"; }
+ (NSString *) Warning { return @"Warning"; }
+ (NSString *) Error { return @"Error"; }
@end

