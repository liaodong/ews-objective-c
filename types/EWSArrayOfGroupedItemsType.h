#import <Foundation/Foundation.h>



@class EWSGroupedItemsType;



/* ArrayOfGroupedItemsType */
@interface EWSArrayOfGroupedItemsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSGroupedItemsType*>* groupedItems;


- (void) addGroupedItems:(EWSGroupedItemsType*) elem;
@end

