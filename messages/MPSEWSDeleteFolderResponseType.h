#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* DeleteFolderResponseType */
@interface MPSEWSDeleteFolderResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeleteFolderResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

