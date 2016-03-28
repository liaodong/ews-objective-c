#import <Foundation/Foundation.h>
#import "EWSBaseResponseMessageType.h"






/* GetFolderResponseType */
@interface EWSGetFolderResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

