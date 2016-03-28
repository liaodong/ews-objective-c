#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfDelegateUserResponseMessageType;



/* BaseDelegateResponseMessageType */
@interface MPSEWSBaseDelegateResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfDelegateUserResponseMessageType* responseMessages;


@end

