#import <Foundation/Foundation.h>

#import "MPSEWSIndexBasePointType.h"
@implementation MPSEWSIndexBasePointType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSIndexBasePointType Beginning], 
                                         [MPSEWSIndexBasePointType End], nil];
    [[[MPSEWSIndexBasePointType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSIndexBasePointType class]];
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

+ (NSString *) Beginning { return @"Beginning"; }
+ (NSString *) End { return @"End"; }
@end

