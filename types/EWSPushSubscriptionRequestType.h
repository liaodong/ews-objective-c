#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSSubscriptionStatusFrequencyType.h"
#import "EWSBaseSubscriptionRequestType.h"



/* PushSubscriptionRequestType */
@interface EWSPushSubscriptionRequestType : EWSBaseSubscriptionRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* statusFrequency  /* EWSSubscriptionStatusFrequencyType */;
@property (retain) NSString* uRL              /* xs:string */;


@end

