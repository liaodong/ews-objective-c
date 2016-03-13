#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSItemIdType.h"



/* SyncFolderItemsReadFlagType */
@interface EWSSyncFolderItemsReadFlagType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSItemIdType* itemId;
@property (retain) NSNumber*      isRead  /* xs:boolean */;


@end

