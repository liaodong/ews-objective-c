#import <Foundation/Foundation.h>
#import "MPSEWSSmartResponseType.h"






/* ReplyAllToItemType */
@interface MPSEWSReplyAllToItemType : MPSEWSSmartResponseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSReplyAllToItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

