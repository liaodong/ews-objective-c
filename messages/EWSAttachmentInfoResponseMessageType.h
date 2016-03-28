#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSArrayOfAttachmentsType;



/* AttachmentInfoResponseMessageType */
@interface EWSAttachmentInfoResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfAttachmentsType* attachments;


@end

