#import <Foundation/Foundation.h>



@class MPSEWSItemIdType;



/* NonEmptyArrayOfItemIdsType */
@interface MPSEWSNonEmptyArrayOfItemIdsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfItemIdsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemIdType*>* itemId;


- (void) addItemId:(MPSEWSItemIdType*) elem;
@end

