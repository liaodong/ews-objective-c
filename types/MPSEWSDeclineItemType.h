#import <Foundation/Foundation.h>
#import "MPSEWSWellKnownResponseObjectType.h"






/* DeclineItemType */
@interface MPSEWSDeclineItemType : MPSEWSWellKnownResponseObjectType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeclineItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

