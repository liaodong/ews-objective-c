#import <Foundation/Foundation.h>

#import "MPSEWSBodyTypeResponseType.h"
@implementation MPSEWSBodyTypeResponseType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSBodyTypeResponseType Best], 
                                         [MPSEWSBodyTypeResponseType HTML], 
                                         [MPSEWSBodyTypeResponseType Text], nil];
    [[[MPSEWSBodyTypeResponseType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSBodyTypeResponseType class]];
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

+ (NSString *) Best { return @"Best"; }
+ (NSString *) HTML { return @"HTML"; }
+ (NSString *) Text { return @"Text"; }
@end

