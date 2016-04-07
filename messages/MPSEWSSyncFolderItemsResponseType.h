#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SyncFolderItemsResponseType */
@interface MPSEWSSyncFolderItemsResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderItemsResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

