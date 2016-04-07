#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfServiceConfigurationResponseMessageType;



/* GetServiceConfigurationResponseMessageType */
@interface MPSEWSGetServiceConfigurationResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetServiceConfigurationResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfServiceConfigurationResponseMessageType* responseMessages;


@end

