#import <Foundation/Foundation.h>
#import "MPSEWSSmartResponseType.h"






/* ReplyToItemType */
@interface MPSEWSReplyToItemType : MPSEWSSmartResponseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSReplyToItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

