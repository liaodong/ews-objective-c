#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSRecipientTrackingEventType;



/* ArrayOfRecipientTrackingEventType */
@interface MPSEWSArrayOfRecipientTrackingEventType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRecipientTrackingEventType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRecipientTrackingEventType*>* recipientTrackingEvent;


- (void) addRecipientTrackingEvent:(MPSEWSRecipientTrackingEventType*) elem;
@end

