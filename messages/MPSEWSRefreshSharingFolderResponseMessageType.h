#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"






/* RefreshSharingFolderResponseMessageType */
@interface MPSEWSRefreshSharingFolderResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRefreshSharingFolderResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

