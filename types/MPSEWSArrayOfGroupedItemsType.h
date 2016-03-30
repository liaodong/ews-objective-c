#import <Foundation/Foundation.h>



@class MPSEWSGroupedItemsType;



/* ArrayOfGroupedItemsType */
@interface MPSEWSArrayOfGroupedItemsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfGroupedItemsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSGroupedItemsType*>* groupedItems;


- (void) addGroupedItems:(MPSEWSGroupedItemsType*) elem;
@end

