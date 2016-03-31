#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSPhoneCallIdType;



/* DisconnectPhoneCallType */
@interface MPSEWSDisconnectPhoneCallType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDisconnectPhoneCallType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPhoneCallIdType* phoneCallId;


@end

