#import <Foundation/Foundation.h>




#import "EWSBaseResponseMessageType.h"



/* CopyFolderResponseType */
@interface EWSCopyFolderResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

