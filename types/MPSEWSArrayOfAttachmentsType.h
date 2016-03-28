#import <Foundation/Foundation.h>



@class MPSEWSFileAttachmentType;
@class MPSEWSItemAttachmentType;



/* ArrayOfAttachmentsType */
@interface MPSEWSArrayOfAttachmentsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemAttachmentType* itemAttachment;
@property (strong) MPSEWSFileAttachmentType* fileAttachment;


@end

