#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* MoveFolderResponseType */
@interface MPSEWSMoveFolderResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMoveFolderResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

