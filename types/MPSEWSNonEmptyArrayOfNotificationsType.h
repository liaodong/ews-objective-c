#import <Foundation/Foundation.h>



@class MPSEWSNotificationType;



/* NonEmptyArrayOfNotificationsType */
@interface MPSEWSNonEmptyArrayOfNotificationsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfNotificationsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSNotificationType*>* notification;


- (void) addNotification:(MPSEWSNotificationType*) elem;
@end

