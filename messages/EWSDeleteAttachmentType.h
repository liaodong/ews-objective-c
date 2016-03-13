#import <Foundation/Foundation.h>




#import "../types/EWSNonEmptyArrayOfRequestAttachmentIdsType.h"
#import "EWSBaseRequestType.h"



/* DeleteAttachmentType */
@interface EWSDeleteAttachmentType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSNonEmptyArrayOfRequestAttachmentIdsType* attachmentIds;


@end

