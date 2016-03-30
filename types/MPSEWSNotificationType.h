#import <Foundation/Foundation.h>



@class MPSEWSBaseNotificationEventType;
@class MPSEWSBaseObjectChangedEventType;
@class MPSEWSModifiedEventType;
@class MPSEWSMovedCopiedEventType;



/* NotificationType */
@interface MPSEWSNotificationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNotificationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                          subscriptionId     /* MPSEWSSubscriptionIdType */;
@property (strong) NSString*                                          previousWatermark  /* MPSEWSWatermarkType */;
@property (strong) NSNumber*                                          moreEvents         /* xs:boolean */;
@property (strong) NSMutableArray<MPSEWSMovedCopiedEventType*>*       copiedEvent;
@property (strong) NSMutableArray<MPSEWSBaseObjectChangedEventType*>* createdEvent;
@property (strong) NSMutableArray<MPSEWSBaseObjectChangedEventType*>* deletedEvent;
@property (strong) NSMutableArray<MPSEWSModifiedEventType*>*          modifiedEvent;
@property (strong) NSMutableArray<MPSEWSMovedCopiedEventType*>*       movedEvent;
@property (strong) NSMutableArray<MPSEWSBaseObjectChangedEventType*>* pNewMailEvent;
@property (strong) NSMutableArray<MPSEWSBaseNotificationEventType*>*  statusEvent;


- (void) addCopiedEvent:(MPSEWSMovedCopiedEventType*) elem;
- (void) addCreatedEvent:(MPSEWSBaseObjectChangedEventType*) elem;
- (void) addDeletedEvent:(MPSEWSBaseObjectChangedEventType*) elem;
- (void) addModifiedEvent:(MPSEWSModifiedEventType*) elem;
- (void) addMovedEvent:(MPSEWSMovedCopiedEventType*) elem;
- (void) addNewMailEvent:(MPSEWSBaseObjectChangedEventType*) elem;
- (void) addStatusEvent:(MPSEWSBaseNotificationEventType*) elem;
@end

