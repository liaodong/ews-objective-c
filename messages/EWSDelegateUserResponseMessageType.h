#import <Foundation/Foundation.h>




#import "../types/EWSDelegateUserType.h"
#import "EWSResponseMessageType.h"



/* DelegateUserResponseMessageType */
@interface EWSDelegateUserResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSDelegateUserType* delegateUser;


@end

