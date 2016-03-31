#import <Foundation/Foundation.h>



@class MPSEWSServiceConfigurationResponseMessageType;



/* ArrayOfServiceConfigurationResponseMessageType */
@interface MPSEWSArrayOfServiceConfigurationResponseMessageType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfServiceConfigurationResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSServiceConfigurationResponseMessageType*>* serviceConfigurationResponseMessageType;


- (void) addServiceConfigurationResponseMessageType:(MPSEWSServiceConfigurationResponseMessageType*) elem;
@end

