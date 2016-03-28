#import <Foundation/Foundation.h>



@class EWSResponseMessageType;
@class EWSUserOofSettings;



/* GetUserOofSettingsResponse */
@interface EWSGetUserOofSettingsResponse : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSResponseMessageType* responseMessage;
@property (strong) EWSUserOofSettings*     oofSettings;
@property (strong) NSString*               allowExternalOof  /* EWSExternalAudience */;


@end

