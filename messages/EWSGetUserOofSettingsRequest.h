#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSEmailAddress;



/* GetUserOofSettingsRequest */
@interface EWSGetUserOofSettingsRequest : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSEmailAddress* mailbox;


@end

