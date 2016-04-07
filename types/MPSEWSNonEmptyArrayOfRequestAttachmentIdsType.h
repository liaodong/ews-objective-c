#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSRequestAttachmentIdType;



/* NonEmptyArrayOfRequestAttachmentIdsType */
@interface MPSEWSNonEmptyArrayOfRequestAttachmentIdsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfRequestAttachmentIdsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRequestAttachmentIdType*>* attachmentId;


- (void) addAttachmentId:(MPSEWSRequestAttachmentIdType*) elem;
@end

