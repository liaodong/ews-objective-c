#import <Foundation/Foundation.h>

#import "MPSEWSSearchFolderTraversalType.h"
@implementation MPSEWSSearchFolderTraversalType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSSearchFolderTraversalType Shallow], 
                                         [MPSEWSSearchFolderTraversalType Deep], nil];
    [[[MPSEWSSearchFolderTraversalType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSSearchFolderTraversalType class]];
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
@end

