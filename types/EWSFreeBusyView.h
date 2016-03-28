#import <Foundation/Foundation.h>



@class EWSArrayOfCalendarEvent;
@class EWSWorkingHours;



/* FreeBusyView */
@interface EWSFreeBusyView : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* freeBusyViewType    /* EWSFreeBusyViewType */;
@property (strong) NSString*                  mergedFreeBusy      /* xs:string */;
@property (strong) EWSArrayOfCalendarEvent*   calendarEventArray;
@property (strong) EWSWorkingHours*           workingHours;


@end

