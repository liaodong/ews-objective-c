#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSDelegateUserType;



/* DelegateUserResponseMessageType */
@interface MPSEWSDelegateUserResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDelegateUserResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSDelegateUserType* delegateUser;


@end

