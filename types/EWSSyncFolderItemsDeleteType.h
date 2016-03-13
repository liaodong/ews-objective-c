#import <Foundation/Foundation.h>




#import "../types/EWSItemIdType.h"



/* SyncFolderItemsDeleteType */
@interface EWSSyncFolderItemsDeleteType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSItemIdType* itemId;


@end

