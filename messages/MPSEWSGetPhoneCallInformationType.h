#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSPhoneCallIdType;



/* GetPhoneCallInformationType */
@interface MPSEWSGetPhoneCallInformationType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetPhoneCallInformationType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPhoneCallIdType* phoneCallId;


@end

