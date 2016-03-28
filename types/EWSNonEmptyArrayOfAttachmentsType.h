#import <Foundation/Foundation.h>



@class EWSFileAttachmentType;
@class EWSItemAttachmentType;



/* NonEmptyArrayOfAttachmentsType */
@interface EWSNonEmptyArrayOfAttachmentsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemAttachmentType* itemAttachment;
@property (strong) EWSFileAttachmentType* fileAttachment;


@end

