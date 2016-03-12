#import <Foundation/Foundation.h>

#import "EWSPermissionActionType.h"
@implementation EWSPermissionActionType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSPermissionActionType None], 
                                         [EWSPermissionActionType Owned], 
                                         [EWSPermissionActionType All], nil];
    [[[EWSPermissionActionType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSPermissionActionType class]];
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
+ (NSString *) Owned { return @"Owned"; }
+ (NSString *) All { return @"All"; }
@end

