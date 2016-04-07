#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* RecurrencePatternBaseType */
@interface MPSEWSRecurrencePatternBaseType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRecurrencePatternBaseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

