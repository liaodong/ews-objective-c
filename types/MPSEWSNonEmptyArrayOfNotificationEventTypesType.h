#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* NonEmptyArrayOfNotificationEventTypesType */
@interface MPSEWSNonEmptyArrayOfNotificationEventTypesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfNotificationEventTypesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* eventType /* MPSEWSNotificationEventTypeType */;


- (void) addEventType:(NSString*) elem;
@end

