#import <Foundation/Foundation.h>

#import "EWSBodyTypeType.h"
@implementation EWSBodyTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSBodyTypeType HTML], 
                                         [EWSBodyTypeType Text], nil];
    [[[EWSBodyTypeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSBodyTypeType class]];
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

