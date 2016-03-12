#import <Foundation/Foundation.h>

#import "EWSContactSourceType.h"
@implementation EWSContactSourceType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSContactSourceType ActiveDirectory], 
                                         [EWSContactSourceType Store], nil];
    [[[EWSContactSourceType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSContactSourceType class]];
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

+ (NSString *) ActiveDirectory { return @"ActiveDirectory"; }
+ (NSString *) Store { return @"Store"; }
@end

