#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* FindMailboxStatisticsByKeywordsResponseType */
@interface MPSEWSFindMailboxStatisticsByKeywordsResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindMailboxStatisticsByKeywordsResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

