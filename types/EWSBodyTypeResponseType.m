#import <Foundation/Foundation.h>

#import "EWSBodyTypeResponseType.h"
@implementation EWSBodyTypeResponseType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSBodyTypeResponseType Best], 
                                         [EWSBodyTypeResponseType HTML], 
                                         [EWSBodyTypeResponseType Text], nil];
    [[[EWSBodyTypeResponseType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSBodyTypeResponseType class]];
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

