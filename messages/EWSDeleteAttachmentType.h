#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfRequestAttachmentIdsType;



/* DeleteAttachmentType */
@interface EWSDeleteAttachmentType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSNonEmptyArrayOfRequestAttachmentIdsType* attachmentIds;


@end

