#import <Foundation/Foundation.h>




#import "../types/EWSRootItemIdType.h"
#import "EWSResponseMessageType.h"



/* DeleteAttachmentResponseMessageType */
@interface EWSDeleteAttachmentResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSRootItemIdType* rootItemId;


@end

