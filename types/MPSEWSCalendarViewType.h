#import <Foundation/Foundation.h>
#import "MPSEWSBasePagingType.h"






/* CalendarViewType */
@interface MPSEWSCalendarViewType : MPSEWSBasePagingType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCalendarViewType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* startDate  /* xs:dateTime */;
@property (strong) NSString* endDate    /* xs:dateTime */;


@end

