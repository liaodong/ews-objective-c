#import <Foundation/Foundation.h>




#import "../messages/EWSResponseMessageType.h"
#import "../types/EWSExternalAudience.h"
#import "../types/EWSUserOofSettings.h"



/* GetUserOofSettingsResponse */
@interface EWSGetUserOofSettingsResponse : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSResponseMessageType* responseMessage;
@property (retain) EWSUserOofSettings*     oofSettings;
@property (retain) NSString*               allowExternalOof  /* EWSExternalAudience */;


@end

