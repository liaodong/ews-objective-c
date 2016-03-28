#import <Foundation/Foundation.h>
#import "EWSBasePagingType.h"






/* CalendarViewType */
@interface EWSCalendarViewType : EWSBasePagingType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* startDate  /* xs:dateTime */;
@property (strong) NSString* endDate    /* xs:dateTime */;


@end

