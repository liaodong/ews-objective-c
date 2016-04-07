#import <Foundation/Foundation.h>

#import "MPSEWSGuidType.h"
@implementation MPSEWSGuidType /* SimpleType */

static NSString* pattern = nil;

+ (void) initialize
{
    pattern = @"[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}";
    [[[MPSEWSGuidType alloc] init] register];
}

+ (BOOL) isValid:(NSString *) val forVersion:(MPSEWSExchangeVersion) ver
{
    (void) val;
    // pattern = @"[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}";
    return TRUE;
}

- (id) init
{
    self = [super initWithClass:[MPSEWSGuidType class]];
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

- (BOOL) string:(NSString*) str hasPattern:(NSString*) p
{
    return TRUE;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    NSAssert([self string:obj hasPattern:pattern], @"String should have a pattern");
    [buffer appendString:obj];
}

@end

