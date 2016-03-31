#import <Foundation/Foundation.h>



@class MPSEWSRecipientTrackingEventType;



/* ArrayOfRecipientTrackingEventType */
@interface MPSEWSArrayOfRecipientTrackingEventType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRecipientTrackingEventType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRecipientTrackingEventType*>* recipientTrackingEvent;


- (void) addRecipientTrackingEvent:(MPSEWSRecipientTrackingEventType*) elem;
@end

