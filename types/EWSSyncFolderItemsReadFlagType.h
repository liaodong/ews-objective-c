#import <Foundation/Foundation.h>



@class EWSItemIdType;



/* SyncFolderItemsReadFlagType */
@interface EWSSyncFolderItemsReadFlagType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemIdType* itemId;
@property (strong) NSNumber*      isRead  /* xs:boolean */;


@end

