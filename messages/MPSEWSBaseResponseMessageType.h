#import <Foundation/Foundation.h>



@class MPSEWSArrayOfResponseMessagesType;



/* BaseResponseMessageType */
@interface MPSEWSBaseResponseMessageType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfResponseMessagesType* responseMessages;


@end

