#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfCalendarEvent;
@class MPSEWSWorkingHours;



/* FreeBusyView */
@interface MPSEWSFreeBusyView : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFreeBusyView*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>*  freeBusyViewType    /* MPSEWSFreeBusyViewType */;
@property (strong) NSString*                   mergedFreeBusy      /* xs:string */;
@property (strong) MPSEWSArrayOfCalendarEvent* calendarEventArray;
@property (strong) MPSEWSWorkingHours*         workingHours;


@end

