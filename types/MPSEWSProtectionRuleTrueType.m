#import <Foundation/Foundation.h>

#import "MPSEWSProtectionRuleTrueType.h"
@implementation MPSEWSProtectionRuleTrueType /* SimpleType */

static int minLength = 0;

static int maxLength = 0;

+ (void) initialize
{
    [[[MPSEWSProtectionRuleTrueType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [val length] > minLength && [val length] < maxLength;
}

- (id) init
{
    self = [super initWithClass:[MPSEWSProtectionRuleTrueType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSString *) construct
{
    return [[NSString alloc] init];
}

- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [s length] > 0 ? s : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    NSAssert([obj length] >= minLength, @"String should have a min length");
    [buffer appendString:obj];
}

@end

