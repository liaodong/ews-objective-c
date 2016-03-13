#import <Foundation/Foundation.h>




#import "EWSSmartResponseType.h"



/* ReplyAllToItemType */
@interface EWSReplyAllToItemType : EWSSmartResponseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

