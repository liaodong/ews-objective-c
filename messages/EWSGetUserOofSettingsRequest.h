#import <Foundation/Foundation.h>




#import "../types/EWSEmailAddress.h"
#import "EWSBaseRequestType.h"



/* GetUserOofSettingsRequest */
@interface EWSGetUserOofSettingsRequest : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSEmailAddress* mailbox;


@end

