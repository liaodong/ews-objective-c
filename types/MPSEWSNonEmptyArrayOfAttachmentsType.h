#import <Foundation/Foundation.h>



@class MPSEWSFileAttachmentType;
@class MPSEWSItemAttachmentType;



/* NonEmptyArrayOfAttachmentsType */
@interface MPSEWSNonEmptyArrayOfAttachmentsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemAttachmentType* itemAttachment;
@property (strong) MPSEWSFileAttachmentType* fileAttachment;


@end

