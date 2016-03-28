#import <Foundation/Foundation.h>

#import "MPSEWSDelegateFolderPermissionLevelType.h"
@implementation MPSEWSDelegateFolderPermissionLevelType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSDelegateFolderPermissionLevelType None], 
                                         [MPSEWSDelegateFolderPermissionLevelType Editor], 
                                         [MPSEWSDelegateFolderPermissionLevelType Reviewer], 
                                         [MPSEWSDelegateFolderPermissionLevelType Author], 
                                         [MPSEWSDelegateFolderPermissionLevelType Custom], nil];
    [[[MPSEWSDelegateFolderPermissionLevelType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSDelegateFolderPermissionLevelType class]];
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
+ (NSString *) Editor { return @"Editor"; }
+ (NSString *) Reviewer { return @"Reviewer"; }
+ (NSString *) Author { return @"Author"; }
+ (NSString *) Custom { return @"Custom"; }
@end

