#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSPhoneCallIdType;



/* PlayOnPhoneResponseMessageType */
@interface MPSEWSPlayOnPhoneResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPlayOnPhoneResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPhoneCallIdType* phoneCallId;


@end

