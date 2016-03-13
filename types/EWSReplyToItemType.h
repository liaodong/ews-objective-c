#import <Foundation/Foundation.h>




#import "EWSSmartResponseType.h"



/* ReplyToItemType */
@interface EWSReplyToItemType : EWSSmartResponseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

