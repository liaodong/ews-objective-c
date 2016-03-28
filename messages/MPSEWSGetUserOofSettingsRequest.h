#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSEmailAddress;



/* GetUserOofSettingsRequest */
@interface MPSEWSGetUserOofSettingsRequest : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddress* mailbox;


@end

