#import <Foundation/Foundation.h>
#import "MPSEWSSmartResponseType.h"






/* ReplyToItemType */
@interface MPSEWSReplyToItemType : MPSEWSSmartResponseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

