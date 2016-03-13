#import <Foundation/Foundation.h>




#import "../types/EWSAttachmentResponseShapeType.h"
#import "../types/EWSNonEmptyArrayOfRequestAttachmentIdsType.h"
#import "EWSBaseRequestType.h"



/* GetAttachmentType */
@interface EWSGetAttachmentType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSAttachmentResponseShapeType*             attachmentShape;
@property (retain) EWSNonEmptyArrayOfRequestAttachmentIdsType* attachmentIds;


@end

