#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSDelegatePermissionsType.h"
#import "../types/EWSUserIdType.h"



/* DelegateUserType */
@interface EWSDelegateUserType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSUserIdType*              userId;
@property (retain) EWSDelegatePermissionsType* delegatePermissions;
@property (retain) NSNumber*                   receiveCopiesOfMeetingMessages  /* xs:boolean */;
@property (retain) NSNumber*                   viewPrivateItems                /* xs:boolean */;


@end

