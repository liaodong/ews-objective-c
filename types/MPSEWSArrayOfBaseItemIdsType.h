#import <Foundation/Foundation.h>



@class MPSEWSItemIdType;



/* ArrayOfBaseItemIdsType */
@interface MPSEWSArrayOfBaseItemIdsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfBaseItemIdsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemIdType*>* itemId;


- (void) addItemId:(MPSEWSItemIdType*) elem;
@end

