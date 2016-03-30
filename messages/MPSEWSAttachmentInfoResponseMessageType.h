#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfAttachmentsType;



/* AttachmentInfoResponseMessageType */
@interface MPSEWSAttachmentInfoResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAttachmentInfoResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfAttachmentsType* attachments;


@end

