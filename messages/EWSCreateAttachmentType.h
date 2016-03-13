#import <Foundation/Foundation.h>




#import "../types/EWSItemIdType.h"
#import "../types/EWSNonEmptyArrayOfAttachmentsType.h"
#import "EWSBaseRequestType.h"



/* CreateAttachmentType */
@interface EWSCreateAttachmentType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSItemIdType*                     parentItemId;
@property (retain) EWSNonEmptyArrayOfAttachmentsType* attachments;


@end

