#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSResponseMessageType;



/* SetUserOofSettingsResponse */
@interface MPSEWSSetUserOofSettingsResponse : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSetUserOofSettingsResponse*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSResponseMessageType* responseMessage;


@end

