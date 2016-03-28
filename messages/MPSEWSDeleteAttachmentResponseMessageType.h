#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSRootItemIdType;



/* DeleteAttachmentResponseMessageType */
@interface MPSEWSDeleteAttachmentResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSRootItemIdType* rootItemId;


@end

