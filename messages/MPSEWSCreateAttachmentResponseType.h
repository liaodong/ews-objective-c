#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* CreateAttachmentResponseType */
@interface MPSEWSCreateAttachmentResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCreateAttachmentResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

