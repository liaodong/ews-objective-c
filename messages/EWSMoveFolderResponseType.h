#import <Foundation/Foundation.h>




#import "EWSBaseResponseMessageType.h"



/* MoveFolderResponseType */
@interface EWSMoveFolderResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

