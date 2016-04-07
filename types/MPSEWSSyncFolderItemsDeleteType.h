#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSItemIdType;



/* SyncFolderItemsDeleteType */
@interface MPSEWSSyncFolderItemsDeleteType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderItemsDeleteType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType* itemId;


@end

