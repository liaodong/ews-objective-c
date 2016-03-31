#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfMailTipsResponseMessageType;



/* GetMailTipsResponseMessageType */
@interface MPSEWSGetMailTipsResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetMailTipsResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfMailTipsResponseMessageType* responseMessages;


@end

