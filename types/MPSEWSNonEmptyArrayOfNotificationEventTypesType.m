#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfNotificationEventTypesType.h"
#import "../types/MPSEWSNotificationEventTypeType.h"


@implementation MPSEWSNonEmptyArrayOfNotificationEventTypesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfNotificationEventTypesType class]];

    [handler property      : @"eventType"
             isRequired    : TRUE
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

@end

