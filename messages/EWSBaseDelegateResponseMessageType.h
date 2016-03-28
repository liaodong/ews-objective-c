#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSArrayOfDelegateUserResponseMessageType;



/* BaseDelegateResponseMessageType */
@interface EWSBaseDelegateResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfDelegateUserResponseMessageType* responseMessages;


@end

