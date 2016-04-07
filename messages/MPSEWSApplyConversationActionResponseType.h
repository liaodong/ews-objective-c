#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* ApplyConversationActionResponseType */
@interface MPSEWSApplyConversationActionResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSApplyConversationActionResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

