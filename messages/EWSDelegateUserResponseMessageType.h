#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSDelegateUserType;



/* DelegateUserResponseMessageType */
@interface EWSDelegateUserResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSDelegateUserType* delegateUser;


@end

