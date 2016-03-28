#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SyncFolderItemsResponseType */
@interface MPSEWSSyncFolderItemsResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

