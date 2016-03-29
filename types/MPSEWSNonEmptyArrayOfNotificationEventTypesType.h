#import <Foundation/Foundation.h>






/* NonEmptyArrayOfNotificationEventTypesType */
@interface MPSEWSNonEmptyArrayOfNotificationEventTypesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* eventType /* MPSEWSNotificationEventTypeType */;


- (void) addEventType:(NSString*) elem;
@end

