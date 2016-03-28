#import <Foundation/Foundation.h>



@class EWSDelegatePermissionsType;
@class EWSUserIdType;



/* DelegateUserType */
@interface EWSDelegateUserType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSUserIdType*              userId;
@property (strong) EWSDelegatePermissionsType* delegatePermissions;
@property (strong) NSNumber*                   receiveCopiesOfMeetingMessages  /* xs:boolean */;
@property (strong) NSNumber*                   viewPrivateItems                /* xs:boolean */;


@end

