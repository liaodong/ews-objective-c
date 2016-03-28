#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSItemIdType;
@class EWSNonEmptyArrayOfAttachmentsType;



/* CreateAttachmentType */
@interface EWSCreateAttachmentType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemIdType*                     parentItemId;
@property (strong) EWSNonEmptyArrayOfAttachmentsType* attachments;


@end

