#import <Foundation/Foundation.h>



@class EWSItemIdType;



/* SyncFolderItemsDeleteType */
@interface EWSSyncFolderItemsDeleteType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemIdType* itemId;


@end

