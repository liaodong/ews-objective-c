#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSServiceConfigurationResponseMessageType;



/* ArrayOfServiceConfigurationResponseMessageType */
@interface MPSEWSArrayOfServiceConfigurationResponseMessageType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfServiceConfigurationResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSServiceConfigurationResponseMessageType*>* serviceConfigurationResponseMessageType;


- (void) addServiceConfigurationResponseMessageType:(MPSEWSServiceConfigurationResponseMessageType*) elem;
@end

