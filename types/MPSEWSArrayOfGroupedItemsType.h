#import <Foundation/Foundation.h>



@class MPSEWSGroupedItemsType;



/* ArrayOfGroupedItemsType */
@interface MPSEWSArrayOfGroupedItemsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSGroupedItemsType*>* groupedItems;


- (void) addGroupedItems:(MPSEWSGroupedItemsType*) elem;
@end

