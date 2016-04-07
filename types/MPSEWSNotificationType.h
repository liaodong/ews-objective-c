#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSBaseNotificationEventType;
@class MPSEWSBaseObjectChangedEventType;
@class MPSEWSModifiedEventType;
@class MPSEWSMovedCopiedEventType;



/* NotificationType */
@interface MPSEWSNotificationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNotificationType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                          subscriptionId        /* MPSEWSSubscriptionIdType */;
@property (strong) NSString*                                          previousWatermark     /* MPSEWSWatermarkType */;
@property (strong) NSNumber*                                          moreEvents            /* xs:boolean */;
@property (strong) NSMutableArray<MPSEWSMovedCopiedEventType*>*       copiedEvent;
@property (strong) NSMutableArray<MPSEWSBaseObjectChangedEventType*>* createdEvent;
@property (strong) NSMutableArray<MPSEWSBaseObjectChangedEventType*>* deletedEvent;
@property (strong) NSMutableArray<MPSEWSModifiedEventType*>*          modifiedEvent;
@property (strong) NSMutableArray<MPSEWSMovedCopiedEventType*>*       movedEvent;
@property (strong) NSMutableArray<MPSEWSBaseObjectChangedEventType*>* pNewMailEvent;
@property (strong) NSMutableArray<MPSEWSBaseNotificationEventType*>*  statusEvent;
@property (strong) NSMutableArray<MPSEWSBaseObjectChangedEventType*>* freeBusyChangedEvent;


- (void) addCopiedEvent:(MPSEWSMovedCopiedEventType*) elem;
- (void) addCreatedEvent:(MPSEWSBaseObjectChangedEventType*) elem;
- (void) addDeletedEvent:(MPSEWSBaseObjectChangedEventType*) elem;
- (void) addModifiedEvent:(MPSEWSModifiedEventType*) elem;
- (void) addMovedEvent:(MPSEWSMovedCopiedEventType*) elem;
- (void) addNewMailEvent:(MPSEWSBaseObjectChangedEventType*) elem;
- (void) addStatusEvent:(MPSEWSBaseNotificationEventType*) elem;
- (void) addFreeBusyChangedEvent:(MPSEWSBaseObjectChangedEventType*) elem;
@end

