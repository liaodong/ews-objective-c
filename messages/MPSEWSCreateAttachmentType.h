#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSItemIdType;
@class MPSEWSNonEmptyArrayOfAttachmentsType;



/* CreateAttachmentType */
@interface MPSEWSCreateAttachmentType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType*                     parentItemId;
@property (strong) MPSEWSNonEmptyArrayOfAttachmentsType* attachments;


@end

