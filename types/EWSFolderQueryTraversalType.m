#import <Foundation/Foundation.h>

#import "EWSFolderQueryTraversalType.h"
@implementation EWSFolderQueryTraversalType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSFolderQueryTraversalType Shallow], 
                                         [EWSFolderQueryTraversalType Deep], 
                                         [EWSFolderQueryTraversalType SoftDeleted], nil];
    [[[EWSFolderQueryTraversalType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSFolderQueryTraversalType class]];
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

+ (NSString *) Shallow { return @"Shallow"; }
+ (NSString *) Deep { return @"Deep"; }
+ (NSString *) SoftDeleted { return @"SoftDeleted"; }
@end

