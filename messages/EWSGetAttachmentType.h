#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSAttachmentResponseShapeType;
@class EWSNonEmptyArrayOfRequestAttachmentIdsType;



/* GetAttachmentType */
@interface EWSGetAttachmentType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSAttachmentResponseShapeType*             attachmentShape;
@property (strong) EWSNonEmptyArrayOfRequestAttachmentIdsType* attachmentIds;


@end

