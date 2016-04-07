#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSItemIdType;



/* NonEmptyArrayOfItemIdsType */
@interface MPSEWSNonEmptyArrayOfItemIdsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfItemIdsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemIdType*>* itemId;


- (void) addItemId:(MPSEWSItemIdType*) elem;
@end

