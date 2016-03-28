#import <Foundation/Foundation.h>



@class EWSRequestAttachmentIdType;



/* NonEmptyArrayOfRequestAttachmentIdsType */
@interface EWSNonEmptyArrayOfRequestAttachmentIdsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSRequestAttachmentIdType* attachmentId;


@end

