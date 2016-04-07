#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* UpdateFolderResponseType */
@interface MPSEWSUpdateFolderResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUpdateFolderResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

