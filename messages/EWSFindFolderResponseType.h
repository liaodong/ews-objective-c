#import <Foundation/Foundation.h>
#import "EWSBaseResponseMessageType.h"






/* FindFolderResponseType */
@interface EWSFindFolderResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

