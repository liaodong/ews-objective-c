#import <Foundation/Foundation.h>

#import "EWSCalendarPermissionLevelType.h"
@implementation EWSCalendarPermissionLevelType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSCalendarPermissionLevelType None], 
                                         [EWSCalendarPermissionLevelType Owner], 
                                         [EWSCalendarPermissionLevelType PublishingEditor], 
                                         [EWSCalendarPermissionLevelType Editor], 
                                         [EWSCalendarPermissionLevelType PublishingAuthor], 
                                         [EWSCalendarPermissionLevelType Author], 
                                         [EWSCalendarPermissionLevelType NoneditingAuthor], 
                                         [EWSCalendarPermissionLevelType Reviewer], 
                                         [EWSCalendarPermissionLevelType Contributor], 
                                         [EWSCalendarPermissionLevelType FreeBusyTimeOnly], 
                                         [EWSCalendarPermissionLevelType FreeBusyTimeAndSubjectAndLocation], 
                                         [EWSCalendarPermissionLevelType Custom], nil];
    [[[EWSCalendarPermissionLevelType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSCalendarPermissionLevelType class]];
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
+ (NSString *) FreeBusyTimeOnly { return @"FreeBusyTimeOnly"; }
+ (NSString *) FreeBusyTimeAndSubjectAndLocation { return @"FreeBusyTimeAndSubjectAndLocation"; }
+ (NSString *) Custom { return @"Custom"; }
@end

