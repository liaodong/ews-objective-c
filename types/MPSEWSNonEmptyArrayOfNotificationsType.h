#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSNotificationType;



/* NonEmptyArrayOfNotificationsType */
@interface MPSEWSNonEmptyArrayOfNotificationsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfNotificationsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSNotificationType*>* notification;


- (void) addNotification:(MPSEWSNotificationType*) elem;
@end

