#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSEmailAddress;
@class EWSUserOofSettings;



/* SetUserOofSettingsRequest */
@interface EWSSetUserOofSettingsRequest : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSEmailAddress*    mailbox;
@property (strong) EWSUserOofSettings* userOofSettings;


@end

