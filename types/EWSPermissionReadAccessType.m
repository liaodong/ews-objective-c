#import <Foundation/Foundation.h>

#import "EWSPermissionReadAccessType.h"
@implementation EWSPermissionReadAccessType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSPermissionReadAccessType None], 
                                         [EWSPermissionReadAccessType FullDetails], nil];
    [[[EWSPermissionReadAccessType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSPermissionReadAccessType class]];
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
+ (NSString *) FullDetails { return @"FullDetails"; }
@end

