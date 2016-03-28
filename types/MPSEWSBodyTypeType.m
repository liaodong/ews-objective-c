#import <Foundation/Foundation.h>

#import "MPSEWSBodyTypeType.h"
@implementation MPSEWSBodyTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSBodyTypeType HTML], 
                                         [MPSEWSBodyTypeType Text], nil];
    [[[MPSEWSBodyTypeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSBodyTypeType class]];
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

+ (NSString *) HTML { return @"HTML"; }
+ (NSString *) Text { return @"Text"; }
@end

