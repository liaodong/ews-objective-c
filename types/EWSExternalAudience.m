#import <Foundation/Foundation.h>

#import "EWSExternalAudience.h"
@implementation EWSExternalAudience /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSExternalAudience None], 
                                         [EWSExternalAudience Known], 
                                         [EWSExternalAudience All], nil];
    [[[EWSExternalAudience alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSExternalAudience class]];
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

+ (NSString *) None { return @"None"; }
+ (NSString *) Known { return @"Known"; }
+ (NSString *) All { return @"All"; }
@end

