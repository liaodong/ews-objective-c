#import <Foundation/Foundation.h>



@class MPSEWSItemIdType;



/* SyncFolderItemsReadFlagType */
@interface MPSEWSSyncFolderItemsReadFlagType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType* itemId;
@property (strong) NSNumber*         isRead  /* xs:boolean */;


@end

