#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* GetAttachmentResponseType */
@interface MPSEWSGetAttachmentResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetAttachmentResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

