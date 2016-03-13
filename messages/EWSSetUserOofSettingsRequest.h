#import <Foundation/Foundation.h>




#import "../types/EWSEmailAddress.h"
#import "../types/EWSUserOofSettings.h"
#import "EWSBaseRequestType.h"



/* SetUserOofSettingsRequest */
@interface EWSSetUserOofSettingsRequest : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSEmailAddress*    mailbox;
@property (retain) EWSUserOofSettings* userOofSettings;


@end

