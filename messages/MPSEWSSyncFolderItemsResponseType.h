#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SyncFolderItemsResponseType */
@interface MPSEWSSyncFolderItemsResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderItemsResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

