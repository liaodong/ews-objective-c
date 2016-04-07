#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSPhoneCallInformationType;



/* GetPhoneCallInformationResponseMessageType */
@interface MPSEWSGetPhoneCallInformationResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetPhoneCallInformationResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPhoneCallInformationType* phoneCallInformation;


@end

