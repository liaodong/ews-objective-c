#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* FindFolderResponseType */
@interface MPSEWSFindFolderResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

