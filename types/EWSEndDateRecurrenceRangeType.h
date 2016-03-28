#import <Foundation/Foundation.h>
#import "EWSRecurrenceRangeBaseType.h"






/* EndDateRecurrenceRangeType */
@interface EWSEndDateRecurrenceRangeType : EWSRecurrenceRangeBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* endDate  /* xs:date */;


@end

