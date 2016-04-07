#import <Foundation/Foundation.h>

#import "MPSEWSFolderQueryTraversalType.h"
@implementation MPSEWSFolderQueryTraversalType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSFolderQueryTraversalType Shallow], 
                                         [MPSEWSFolderQueryTraversalType Deep], 
                                         [MPSEWSFolderQueryTraversalType SoftDeleted], nil];
    [[[MPSEWSFolderQueryTraversalType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSFolderQueryTraversalType class]];
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

