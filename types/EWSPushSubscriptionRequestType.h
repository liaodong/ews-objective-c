#import <Foundation/Foundation.h>
#import "EWSBaseSubscriptionRequestType.h"






/* PushSubscriptionRequestType */
@interface EWSPushSubscriptionRequestType : EWSBaseSubscriptionRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* statusFrequency  /* EWSSubscriptionStatusFrequencyType */;
@property (strong) NSString* uRL              /* xs:string */;


@end

