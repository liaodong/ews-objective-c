#import <Foundation/Foundation.h>



@class MPSEWSResponseMessageType;



/* SetUserOofSettingsResponse */
@interface MPSEWSSetUserOofSettingsResponse : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSetUserOofSettingsResponse*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSResponseMessageType* responseMessage;


@end

