#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* UploadItemsResponseType */
@interface MPSEWSUploadItemsResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUploadItemsResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

