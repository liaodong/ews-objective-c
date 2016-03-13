#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTypeHandler.h"
#import "EWSRecurrenceRangeBaseType.h"



/* EndDateRecurrenceRangeType */
@interface EWSEndDateRecurrenceRangeType : EWSRecurrenceRangeBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* endDate  /* xs:date */;


@end

