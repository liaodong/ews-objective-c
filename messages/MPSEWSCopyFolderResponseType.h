#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* CopyFolderResponseType */
@interface MPSEWSCopyFolderResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCopyFolderResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

