#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTypeHandler.h"



/* RecurrenceRangeBaseType */
@interface EWSRecurrenceRangeBaseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* startDate  /* xs:date */;


@end

