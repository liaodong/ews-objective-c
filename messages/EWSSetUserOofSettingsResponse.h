#import <Foundation/Foundation.h>




#import "../messages/EWSResponseMessageType.h"



/* SetUserOofSettingsResponse */
@interface EWSSetUserOofSettingsResponse : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSResponseMessageType* responseMessage;


@end

