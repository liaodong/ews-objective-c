#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSResponseMessageType;
@class MPSEWSUserOofSettings;



/* GetUserOofSettingsResponse */
@interface MPSEWSGetUserOofSettingsResponse : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetUserOofSettingsResponse*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSResponseMessageType* responseMessage;
@property (strong) MPSEWSUserOofSettings*     oofSettings;
@property (strong) NSString*                  allowExternalOof  /* MPSEWSExternalAudience */;


@end

