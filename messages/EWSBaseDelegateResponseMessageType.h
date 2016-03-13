#import <Foundation/Foundation.h>




#import "../messages/EWSArrayOfDelegateUserResponseMessageType.h"
#import "EWSResponseMessageType.h"



/* BaseDelegateResponseMessageType */
@interface EWSBaseDelegateResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSArray<EWSDelegateUserResponseMessageType*>* responseMessages  /* EWSArrayOfDelegateUserResponseMessageType */;


@end

