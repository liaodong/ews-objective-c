#import <Foundation/Foundation.h>



@class MPSEWSDelegatePermissionsType;
@class MPSEWSUserIdType;



/* DelegateUserType */
@interface MPSEWSDelegateUserType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUserIdType*              userId;
@property (strong) MPSEWSDelegatePermissionsType* delegatePermissions;
@property (strong) NSNumber*                      receiveCopiesOfMeetingMessages  /* xs:boolean */;
@property (strong) NSNumber*                      viewPrivateItems                /* xs:boolean */;


@end

