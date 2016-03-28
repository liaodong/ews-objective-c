#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfAttachmentsType;



/* AttachmentInfoResponseMessageType */
@interface MPSEWSAttachmentInfoResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfAttachmentsType* attachments;


@end

