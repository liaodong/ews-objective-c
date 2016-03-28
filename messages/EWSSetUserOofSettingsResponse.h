#import <Foundation/Foundation.h>



@class EWSResponseMessageType;



/* SetUserOofSettingsResponse */
@interface EWSSetUserOofSettingsResponse : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSResponseMessageType* responseMessage;


@end

