#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSItemIdType;



/* ArrayOfBaseItemIdsType */
@interface MPSEWSArrayOfBaseItemIdsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfBaseItemIdsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemIdType*>* itemId;


- (void) addItemId:(MPSEWSItemIdType*) elem;
@end

