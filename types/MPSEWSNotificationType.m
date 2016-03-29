#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNotificationType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSBaseNotificationEventType.h"
#import "../types/MPSEWSBaseObjectChangedEventType.h"
#import "../types/MPSEWSModifiedEventType.h"
#import "../types/MPSEWSMovedCopiedEventType.h"
#import "../types/MPSEWSSubscriptionIdType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSNotificationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNotificationType class]];

    [handler property      : @"subscriptionId"
             withNamespace : 't'
             withXmlTag    : @"SubscriptionId"
             withHandler   : [MPSEWSSubscriptionIdType class]];

    [handler property      : @"previousWatermark"
             withNamespace : 't'
             withXmlTag    : @"PreviousWatermark"
             withHandler   : [MPSEWSWatermarkType class]];

    [handler property      : @"moreEvents"
             withNamespace : 't'
             withXmlTag    : @"MoreEvents"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler listProperty  : @"copiedEvent"
             useSelector   : @"addCopiedEvent"
             withNamespace : 't'
             withXmlTag    : @"CopiedEvent"
             withHandler   : [MPSEWSMovedCopiedEventType class]];

    [handler listProperty  : @"createdEvent"
             useSelector   : @"addCreatedEvent"
             withNamespace : 't'
             withXmlTag    : @"CreatedEvent"
             withHandler   : [MPSEWSBaseObjectChangedEventType class]];

    [handler listProperty  : @"deletedEvent"
             useSelector   : @"addDeletedEvent"
             withNamespace : 't'
             withXmlTag    : @"DeletedEvent"
             withHandler   : [MPSEWSBaseObjectChangedEventType class]];

    [handler listProperty  : @"modifiedEvent"
             useSelector   : @"addModifiedEvent"
             withNamespace : 't'
             withXmlTag    : @"ModifiedEvent"
             withHandler   : [MPSEWSModifiedEventType class]];

    [handler listProperty  : @"movedEvent"
             useSelector   : @"addMovedEvent"
             withNamespace : 't'
             withXmlTag    : @"MovedEvent"
             withHandler   : [MPSEWSMovedCopiedEventType class]];

    [handler listProperty  : @"pNewMailEvent"
             useSelector   : @"addNewMailEvent"
             withNamespace : 't'
             withXmlTag    : @"NewMailEvent"
             withHandler   : [MPSEWSBaseObjectChangedEventType class]];

    [handler listProperty  : @"statusEvent"
             useSelector   : @"addStatusEvent"
             withNamespace : 't'
             withXmlTag    : @"StatusEvent"
             withHandler   : [MPSEWSBaseNotificationEventType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNotificationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NotificationType: SubscriptionId=%@ PreviousWatermark=%@ MoreEvents=%@ CopiedEvent=%@ CreatedEvent=%@ DeletedEvent=%@ ModifiedEvent=%@ MovedEvent=%@ NewMailEvent=%@ StatusEvent=%@", _subscriptionId, _previousWatermark, _moreEvents, _copiedEvent, _createdEvent, _deletedEvent, _modifiedEvent, _movedEvent, _pNewMailEvent, _statusEvent];
}

- (void) addCopiedEvent:(MPSEWSMovedCopiedEventType*) elem
{
    if (![self copiedEvent]) {
        [self setCopiedEvent:[[NSMutableArray<MPSEWSMovedCopiedEventType*> alloc] init]];
    }
    [_copiedEvent addObject:elem];
}

- (void) addCreatedEvent:(MPSEWSBaseObjectChangedEventType*) elem
{
    if (![self createdEvent]) {
        [self setCreatedEvent:[[NSMutableArray<MPSEWSBaseObjectChangedEventType*> alloc] init]];
    }
    [_createdEvent addObject:elem];
}

- (void) addDeletedEvent:(MPSEWSBaseObjectChangedEventType*) elem
{
    if (![self deletedEvent]) {
        [self setDeletedEvent:[[NSMutableArray<MPSEWSBaseObjectChangedEventType*> alloc] init]];
    }
    [_deletedEvent addObject:elem];
}

- (void) addModifiedEvent:(MPSEWSModifiedEventType*) elem
{
    if (![self modifiedEvent]) {
        [self setModifiedEvent:[[NSMutableArray<MPSEWSModifiedEventType*> alloc] init]];
    }
    [_modifiedEvent addObject:elem];
}

- (void) addMovedEvent:(MPSEWSMovedCopiedEventType*) elem
{
    if (![self movedEvent]) {
        [self setMovedEvent:[[NSMutableArray<MPSEWSMovedCopiedEventType*> alloc] init]];
    }
    [_movedEvent addObject:elem];
}

- (void) addNewMailEvent:(MPSEWSBaseObjectChangedEventType*) elem
{
    if (![self pNewMailEvent]) {
        [self setPNewMailEvent:[[NSMutableArray<MPSEWSBaseObjectChangedEventType*> alloc] init]];
    }
    [_pNewMailEvent addObject:elem];
}

- (void) addStatusEvent:(MPSEWSBaseNotificationEventType*) elem
{
    if (![self statusEvent]) {
        [self setStatusEvent:[[NSMutableArray<MPSEWSBaseNotificationEventType*> alloc] init]];
    }
    [_statusEvent addObject:elem];
}

@end

