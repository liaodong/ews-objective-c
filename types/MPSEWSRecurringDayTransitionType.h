#import <Foundation/Foundation.h>
#import "MPSEWSRecurringTimeTransitionType.h"






/* RecurringDayTransitionType */
@interface MPSEWSRecurringDayTransitionType : MPSEWSRecurringTimeTransitionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRecurringDayTransitionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* dayOfWeek   /* MPSEWSDayOfWeekType */;
@property (strong) NSNumber* occurrence  /* xs:int */;


@end

