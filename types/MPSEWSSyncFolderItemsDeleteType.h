#import <Foundation/Foundation.h>



@class MPSEWSItemIdType;



/* SyncFolderItemsDeleteType */
@interface MPSEWSSyncFolderItemsDeleteType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType* itemId;


@end

