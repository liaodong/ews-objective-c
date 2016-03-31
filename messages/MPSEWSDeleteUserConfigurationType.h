#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSUserConfigurationNameType;



/* DeleteUserConfigurationType */
@interface MPSEWSDeleteUserConfigurationType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeleteUserConfigurationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUserConfigurationNameType* userConfigurationName;


@end

