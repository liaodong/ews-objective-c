#import <Foundation/Foundation.h>
#import "MPSEWSTransitionType.h"






/* RecurringTimeTransitionType */
@interface MPSEWSRecurringTimeTransitionType : MPSEWSTransitionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRecurringTimeTransitionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* timeOffset  /* xs:duration */;
@property (strong) NSNumber* month       /* xs:int */;


@end

