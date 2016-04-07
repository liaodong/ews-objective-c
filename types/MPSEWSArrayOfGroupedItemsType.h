#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSGroupedItemsType;



/* ArrayOfGroupedItemsType */
@interface MPSEWSArrayOfGroupedItemsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfGroupedItemsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSGroupedItemsType*>* groupedItems;


- (void) addGroupedItems:(MPSEWSGroupedItemsType*) elem;
@end

