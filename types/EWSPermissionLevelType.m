#import <Foundation/Foundation.h>

#import "EWSPermissionLevelType.h"
@implementation EWSPermissionLevelType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSPermissionLevelType None], 
                                         [EWSPermissionLevelType Owner], 
                                         [EWSPermissionLevelType PublishingEditor], 
                                         [EWSPermissionLevelType Editor], 
                                         [EWSPermissionLevelType PublishingAuthor], 
                                         [EWSPermissionLevelType Author], 
                                         [EWSPermissionLevelType NoneditingAuthor], 
                                         [EWSPermissionLevelType Reviewer], 
                                         [EWSPermissionLevelType Contributor], 
                                         [EWSPermissionLevelType Custom], nil];
    [[[EWSPermissionLevelType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSPermissionLevelType class]];
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

