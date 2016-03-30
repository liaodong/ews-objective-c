#import <Foundation/Foundation.h>






/* RecurrenceRangeBaseType */
@interface MPSEWSRecurrenceRangeBaseType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRecurrenceRangeBaseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* startDate  /* xs:date */;


@end

