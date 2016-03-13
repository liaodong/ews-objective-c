#import <Foundation/Foundation.h>




#import "../types/EWSArrayOfAttachmentsType.h"
#import "EWSResponseMessageType.h"



/* AttachmentInfoResponseMessageType */
@interface EWSAttachmentInfoResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSArrayOfAttachmentsType* attachments;


@end

