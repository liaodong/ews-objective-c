#import <Foundation/Foundation.h>
#import "MPSEWSSmartResponseType.h"






/* ReplyToItemType */
@interface MPSEWSReplyToItemType : MPSEWSSmartResponseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSReplyToItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

