#import <Foundation/Foundation.h>






/* ArrayOfServiceConfigurationType */
@interface MPSEWSArrayOfServiceConfigurationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfServiceConfigurationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSMutableArray<NSString*>*>* configurationName /* MPSEWSServiceConfigurationType */;


- (void) addConfigurationName:(NSMutableArray<NSString*>*) elem;
@end

