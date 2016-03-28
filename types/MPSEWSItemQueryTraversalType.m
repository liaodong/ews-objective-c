#import <Foundation/Foundation.h>

#import "MPSEWSItemQueryTraversalType.h"
@implementation MPSEWSItemQueryTraversalType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSItemQueryTraversalType Shallow], 
                                         [MPSEWSItemQueryTraversalType SoftDeleted], nil];
    [[[MPSEWSItemQueryTraversalType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSItemQueryTraversalType class]];
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

+ (NSString *) Shallow { return @"Shallow"; }
+ (NSString *) SoftDeleted { return @"SoftDeleted"; }
@end

