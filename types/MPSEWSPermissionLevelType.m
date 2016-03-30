#import <Foundation/Foundation.h>

#import "MPSEWSPermissionLevelType.h"
@implementation MPSEWSPermissionLevelType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSPermissionLevelType None], 
                                         [MPSEWSPermissionLevelType Owner], 
                                         [MPSEWSPermissionLevelType PublishingEditor], 
                                         [MPSEWSPermissionLevelType Editor], 
                                         [MPSEWSPermissionLevelType PublishingAuthor], 
                                         [MPSEWSPermissionLevelType Author], 
                                         [MPSEWSPermissionLevelType NoneditingAuthor], 
                                         [MPSEWSPermissionLevelType Reviewer], 
                                         [MPSEWSPermissionLevelType Contributor], 
                                         [MPSEWSPermissionLevelType Custom], nil];
    [[[MPSEWSPermissionLevelType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSPermissionLevelType class]];
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
+ (NSString *) Owner { return @"Owner"; }
+ (NSString *) PublishingEditor { return @"PublishingEditor"; }
+ (NSString *) Editor { return @"Editor"; }
+ (NSString *) PublishingAuthor { return @"PublishingAuthor"; }
+ (NSString *) Author { return @"Author"; }
+ (NSString *) NoneditingAuthor { return @"NoneditingAuthor"; }
+ (NSString *) Reviewer { return @"Reviewer"; }
+ (NSString *) Contributor { return @"Contributor"; }
+ (NSString *) Custom { return @"Custom"; }
@end

