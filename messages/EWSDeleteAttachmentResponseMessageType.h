#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSRootItemIdType;



/* DeleteAttachmentResponseMessageType */
@interface EWSDeleteAttachmentResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSRootItemIdType* rootItemId;


@end

