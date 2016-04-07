#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* GetFolderResponseType */
@interface MPSEWSGetFolderResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetFolderResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

