#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSUserConfigurationType;



/* GetUserConfigurationResponseMessageType */
@interface MPSEWSGetUserConfigurationResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetUserConfigurationResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUserConfigurationType* userConfiguration;


@end

