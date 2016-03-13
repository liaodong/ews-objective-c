#import <Foundation/Foundation.h>




#import "../messages/EWSArrayOfResponseMessagesType.h"



/* BaseResponseMessageType */
@interface EWSBaseResponseMessageType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSArrayOfResponseMessagesType* responseMessages;


@end

