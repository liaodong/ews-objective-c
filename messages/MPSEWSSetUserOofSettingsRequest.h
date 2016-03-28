#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSEmailAddress;
@class MPSEWSUserOofSettings;



/* SetUserOofSettingsRequest */
@interface MPSEWSSetUserOofSettingsRequest : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddress*    mailbox;
@property (strong) MPSEWSUserOofSettings* userOofSettings;


@end

