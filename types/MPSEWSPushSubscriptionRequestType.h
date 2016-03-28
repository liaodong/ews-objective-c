#import <Foundation/Foundation.h>
#import "MPSEWSBaseSubscriptionRequestType.h"






/* PushSubscriptionRequestType */
@interface MPSEWSPushSubscriptionRequestType : MPSEWSBaseSubscriptionRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* statusFrequency  /* MPSEWSSubscriptionStatusFrequencyType */;
@property (strong) NSString* uRL              /* xs:string */;


@end

