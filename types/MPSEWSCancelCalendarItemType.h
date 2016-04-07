#import <Foundation/Foundation.h>
#import "MPSEWSSmartResponseType.h"






/* CancelCalendarItemType */
@interface MPSEWSCancelCalendarItemType : MPSEWSSmartResponseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCancelCalendarItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

