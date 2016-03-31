#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSArrayOfServiceConfigurationType;
@class MPSEWSEmailAddressType;



/* GetServiceConfigurationType */
@interface MPSEWSGetServiceConfigurationType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetServiceConfigurationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType*                actingAs;
@property (strong) MPSEWSArrayOfServiceConfigurationType* requestedConfiguration;


@end

