#import <Foundation/Foundation.h>
#import "EWSBaseResponseMessageType.h"






/* SyncFolderItemsResponseType */
@interface EWSSyncFolderItemsResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

