#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* NonEmptyArrayOfSubscriptionIdsType */
@interface MPSEWSNonEmptyArrayOfSubscriptionIdsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfSubscriptionIdsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* subscriptionId /* MPSEWSSubscriptionIdType */;


- (void) addSubscriptionId:(NSString*) elem;
@end

