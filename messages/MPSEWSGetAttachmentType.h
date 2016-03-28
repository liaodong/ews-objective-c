#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSAttachmentResponseShapeType;
@class MPSEWSNonEmptyArrayOfRequestAttachmentIdsType;



/* GetAttachmentType */
@interface MPSEWSGetAttachmentType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSAttachmentResponseShapeType*             attachmentShape;
@property (strong) MPSEWSNonEmptyArrayOfRequestAttachmentIdsType* attachmentIds;


@end

