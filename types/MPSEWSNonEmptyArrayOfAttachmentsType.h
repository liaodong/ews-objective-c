#import <Foundation/Foundation.h>



@class MPSEWSFileAttachmentType;
@class MPSEWSItemAttachmentType;



/* NonEmptyArrayOfAttachmentsType */
@interface MPSEWSNonEmptyArrayOfAttachmentsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemAttachmentType*>* itemAttachment;
@property (strong) NSMutableArray<MPSEWSFileAttachmentType*>* fileAttachment;


- (void) addItemAttachment:(MPSEWSItemAttachmentType*) elem;
- (void) addFileAttachment:(MPSEWSFileAttachmentType*) elem;
@end

