#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSArrayOfCalendarEvent.h"
#import "../types/EWSFreeBusyViewType.h"
#import "../types/EWSWorkingHours.h"



/* FreeBusyView */
@interface EWSFreeBusyView : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSMutableArray<NSString*>*  freeBusyViewType    /* EWSFreeBusyViewType */;
@property (retain) NSString*                   mergedFreeBusy      /* xs:string */;
@property (retain) NSArray<EWSCalendarEvent*>* calendarEventArray  /* EWSArrayOfCalendarEvent */;
@property (retain) EWSWorkingHours*            workingHours;


@end

