#import <Foundation/Foundation.h>

#import "MPSEWSExcludesAttributeType.h"
@implementation MPSEWSExcludesAttributeType /* SimpleType */

static NSString* pattern = nil;

+ (void) initialize
{
    pattern = @"((0x|0X)[0-9A-Fa-f]*)|([0-9]*)";
    [[[MPSEWSExcludesAttributeType alloc] init] register];
}

+ (BOOL) isValid:(NSString *) val
{
    (void) val;
    // pattern = @"((0x|0X)[0-9A-Fa-f]*)|([0-9]*)";
    return TRUE;
}

- (id) init
{
    self = [super initWithClass:[MPSEWSExcludesAttributeType class]];
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

