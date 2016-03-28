#import <Foundation/Foundation.h>



@class EWSArrayOfResponseMessagesType;



/* BaseResponseMessageType */
@interface EWSBaseResponseMessageType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfResponseMessagesType* responseMessages;


@end

