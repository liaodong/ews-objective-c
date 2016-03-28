#import <Foundation/Foundation.h>
#import "EWSRecurrenceRangeBaseType.h"






/* NumberedRecurrenceRangeType */
@interface EWSNumberedRecurrenceRangeType : EWSRecurrenceRangeBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* numberOfOccurrences  /* xs:int */;


@end

