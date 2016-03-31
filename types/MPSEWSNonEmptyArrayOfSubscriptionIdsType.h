#import <Foundation/Foundation.h>






/* NonEmptyArrayOfSubscriptionIdsType */
@interface MPSEWSNonEmptyArrayOfSubscriptionIdsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfSubscriptionIdsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* subscriptionId /* MPSEWSSubscriptionIdType */;


- (void) addSubscriptionId:(NSString*) elem;
@end

