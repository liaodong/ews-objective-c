#import <Foundation/Foundation.h>






/* RecurrencePatternBaseType */
@interface MPSEWSRecurrencePatternBaseType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRecurrencePatternBaseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

