#import <Foundation/Foundation.h>

#import "EWSOofState.h"
@implementation EWSOofState /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSOofState Disabled], 
                                         [EWSOofState Enabled], 
                                         [EWSOofState Scheduled], nil];
    [[[EWSOofState alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSOofState class]];
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

+ (NSString *) Disabled { return @"Disabled"; }
+ (NSString *) Enabled { return @"Enabled"; }
+ (NSString *) Scheduled { return @"Scheduled"; }
@end

