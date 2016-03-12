#import <Foundation/Foundation.h>

#import "EWSNotificationEventTypeType.h"
@implementation EWSNotificationEventTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSNotificationEventTypeType CopiedEvent], 
                                         [EWSNotificationEventTypeType CreatedEvent], 
                                         [EWSNotificationEventTypeType DeletedEvent], 
                                         [EWSNotificationEventTypeType ModifiedEvent], 
                                         [EWSNotificationEventTypeType MovedEvent], 
                                         [EWSNotificationEventTypeType NewMailEvent], nil];
    [[[EWSNotificationEventTypeType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSNotificationEventTypeType class]];
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

+ (NSString *) CopiedEvent { return @"CopiedEvent"; }
+ (NSString *) CreatedEvent { return @"CreatedEvent"; }
+ (NSString *) DeletedEvent { return @"DeletedEvent"; }
+ (NSString *) ModifiedEvent { return @"ModifiedEvent"; }
+ (NSString *) MovedEvent { return @"MovedEvent"; }
+ (NSString *) NewMailEvent { return @"NewMailEvent"; }
@end

