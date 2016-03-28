#import <Foundation/Foundation.h>






/* RecurrenceRangeBaseType */
@interface MPSEWSRecurrenceRangeBaseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* startDate  /* xs:date */;


@end

