#import <Foundation/Foundation.h>

#import "MPSEWSExchangeVersionType.h"
@implementation MPSEWSExchangeVersionType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSExchangeVersionType Exchange2007], 
                                         [MPSEWSExchangeVersionType Exchange2007_SP1], 
                                         [MPSEWSExchangeVersionType Exchange2010], 
                                         [MPSEWSExchangeVersionType Exchange2010_SP1], 
                                         [MPSEWSExchangeVersionType Exchange2010_SP2], nil];
    [[[MPSEWSExchangeVersionType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSExchangeVersionType class]];
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

+ (NSString *) Exchange2007 { return @"Exchange2007"; }
+ (NSString *) Exchange2007_SP1 { return @"Exchange2007_SP1"; }
+ (NSString *) Exchange2010 { return @"Exchange2010"; }
+ (NSString *) Exchange2010_SP1 { return @"Exchange2010_SP1"; }
+ (NSString *) Exchange2010_SP2 { return @"Exchange2010_SP2"; }
@end

