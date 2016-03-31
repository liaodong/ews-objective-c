#import <Foundation/Foundation.h>
#import "MPSEWSRecurringTimeTransitionType.h"






/* RecurringDateTransitionType */
@interface MPSEWSRecurringDateTransitionType : MPSEWSRecurringTimeTransitionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRecurringDateTransitionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* day    /* xs:int */;


@end

