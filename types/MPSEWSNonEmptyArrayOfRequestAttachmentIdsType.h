#import <Foundation/Foundation.h>



@class MPSEWSRequestAttachmentIdType;



/* NonEmptyArrayOfRequestAttachmentIdsType */
@interface MPSEWSNonEmptyArrayOfRequestAttachmentIdsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfRequestAttachmentIdsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRequestAttachmentIdType*>* attachmentId;


- (void) addAttachmentId:(MPSEWSRequestAttachmentIdType*) elem;
@end

