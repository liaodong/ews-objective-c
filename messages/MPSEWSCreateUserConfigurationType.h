#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSUserConfigurationType;



/* CreateUserConfigurationType */
@interface MPSEWSCreateUserConfigurationType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCreateUserConfigurationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUserConfigurationType* userConfiguration;


@end

