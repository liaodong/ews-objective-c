#import <Foundation/Foundation.h>

#import "EWSIndexBasePointType.h"
@implementation EWSIndexBasePointType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSIndexBasePointType Beginning], 
                                         [EWSIndexBasePointType End], nil];
    [[[EWSIndexBasePointType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSIndexBasePointType class]];
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

