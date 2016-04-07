#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* RecurrenceRangeBaseType */
@interface MPSEWSRecurrenceRangeBaseType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRecurrenceRangeBaseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* startDate  /* xs:date */;


@end

