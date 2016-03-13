#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSRecurrenceRangeBaseType.h"



/* NumberedRecurrenceRangeType */
@interface EWSNumberedRecurrenceRangeType : EWSRecurrenceRangeBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* numberOfOccurrences  /* xs:int */;


@end

