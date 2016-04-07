#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSDelegateUserType;



/* ArrayOfDelegateUserType */
@interface MPSEWSArrayOfDelegateUserType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfDelegateUserType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSDelegateUserType*>* delegateUser;


- (void) addDelegateUser:(MPSEWSDelegateUserType*) elem;
@end

