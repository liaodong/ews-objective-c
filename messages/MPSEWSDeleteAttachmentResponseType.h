#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* DeleteAttachmentResponseType */
@interface MPSEWSDeleteAttachmentResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeleteAttachmentResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

