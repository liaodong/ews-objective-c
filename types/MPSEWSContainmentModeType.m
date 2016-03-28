#import <Foundation/Foundation.h>

#import "MPSEWSContainmentModeType.h"
@implementation MPSEWSContainmentModeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSContainmentModeType FullString], 
                                         [MPSEWSContainmentModeType Prefixed], 
                                         [MPSEWSContainmentModeType Substring], 
                                         [MPSEWSContainmentModeType PrefixOnWords], 
                                         [MPSEWSContainmentModeType ExactPhrase], nil];
    [[[MPSEWSContainmentModeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSContainmentModeType class]];
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

+ (NSString *) FullString { return @"FullString"; }
+ (NSString *) Prefixed { return @"Prefixed"; }
+ (NSString *) Substring { return @"Substring"; }
+ (NSString *) PrefixOnWords { return @"PrefixOnWords"; }
+ (NSString *) ExactPhrase { return @"ExactPhrase"; }
@end

