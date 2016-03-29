#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfNotificationEventTypesType.h"
#import "../types/MPSEWSNotificationEventTypeType.h"


@implementation MPSEWSNonEmptyArrayOfNotificationEventTypesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfNotificationEventTypesType class]];

    [handler listProperty  : @"eventType"
             isNonEmpty    : TRUE
             useSelector   : @"addEventType"
             withNamespace : 't'
             withXmlTag    : @"EventType"
             withHandler   : [MPSEWSNotificationEventTypeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfNotificationEventTypesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfNotificationEventTypesType: EventType=%@", _eventType];
}

- (void) addEventType:(NSString*) elem
{
    if (![self eventType]) {
        [self setEventType:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_eventType addObject:elem];
}

@end

