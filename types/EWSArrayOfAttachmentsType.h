#import <Foundation/Foundation.h>



@class EWSFileAttachmentType;
@class EWSItemAttachmentType;



/* ArrayOfAttachmentsType */
@interface EWSArrayOfAttachmentsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemAttachmentType* itemAttachment;
@property (strong) EWSFileAttachmentType* fileAttachment;


@end

