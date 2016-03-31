#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSUserConfigurationNameType;



/* GetUserConfigurationType */
@interface MPSEWSGetUserConfigurationType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetUserConfigurationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUserConfigurationNameType* userConfigurationName;
@property (strong) NSMutableArray<NSString*>*       userConfigurationProperties  /* MPSEWSUserConfigurationPropertyType */;


@end

