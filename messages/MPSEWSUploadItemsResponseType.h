#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* UploadItemsResponseType */
@interface MPSEWSUploadItemsResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUploadItemsResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

