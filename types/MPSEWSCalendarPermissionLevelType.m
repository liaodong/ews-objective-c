#import <Foundation/Foundation.h>

#import "MPSEWSCalendarPermissionLevelType.h"
@implementation MPSEWSCalendarPermissionLevelType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSCalendarPermissionLevelType None], 
                                         [MPSEWSCalendarPermissionLevelType Owner], 
                                         [MPSEWSCalendarPermissionLevelType PublishingEditor], 
                                         [MPSEWSCalendarPermissionLevelType Editor], 
                                         [MPSEWSCalendarPermissionLevelType PublishingAuthor], 
                                         [MPSEWSCalendarPermissionLevelType Author], 
                                         [MPSEWSCalendarPermissionLevelType NoneditingAuthor], 
                                         [MPSEWSCalendarPermissionLevelType Reviewer], 
                                         [MPSEWSCalendarPermissionLevelType Contributor], 
                                         [MPSEWSCalendarPermissionLevelType FreeBusyTimeOnly], 
                                         [MPSEWSCalendarPermissionLevelType FreeBusyTimeAndSubjectAndLocation], 
                                         [MPSEWSCalendarPermissionLevelType Custom], nil];
    [[[MPSEWSCalendarPermissionLevelType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSCalendarPermissionLevelType class]];
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

