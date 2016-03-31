#import <Foundation/Foundation.h>

#import "MPSEWSNotificationEventTypeType.h"
@implementation MPSEWSNotificationEventTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSNotificationEventTypeType CopiedEvent], 
                                         [MPSEWSNotificationEventTypeType CreatedEvent], 
                                         [MPSEWSNotificationEventTypeType DeletedEvent], 
                                         [MPSEWSNotificationEventTypeType ModifiedEvent], 
                                         [MPSEWSNotificationEventTypeType MovedEvent], 
                                         [MPSEWSNotificationEventTypeType NewMailEvent], 
                                         [MPSEWSNotificationEventTypeType FreeBusyChangedEvent], nil];
    [[[MPSEWSNotificationEventTypeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSNotificationEventTypeType class]];
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
+ (NSString *) FreeBusyChangedEvent { return @"FreeBusyChangedEvent"; }
@end

