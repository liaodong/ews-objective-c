#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSDelegateUserResponseMessageType;



/* ArrayOfDelegateUserResponseMessageType */
@interface MPSEWSArrayOfDelegateUserResponseMessageType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfDelegateUserResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSDelegateUserResponseMessageType*>* delegateUserResponseMessageType;


- (void) addDelegateUserResponseMessageType:(MPSEWSDelegateUserResponseMessageType*) elem;
@end

