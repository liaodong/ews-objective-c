#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTimeTypeHandler.h"
#import "EWSBasePagingType.h"



/* CalendarViewType */
@interface EWSCalendarViewType : EWSBasePagingType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* startDate  /* xs:dateTime */;
@property (retain) NSString* endDate    /* xs:dateTime */;


@end

