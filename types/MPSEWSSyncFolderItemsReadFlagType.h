#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSItemIdType;



/* SyncFolderItemsReadFlagType */
@interface MPSEWSSyncFolderItemsReadFlagType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderItemsReadFlagType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType* itemId;
@property (strong) NSNumber*         isRead  /* xs:boolean */;


@end

