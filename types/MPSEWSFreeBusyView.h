#import <Foundation/Foundation.h>



@class MPSEWSArrayOfCalendarEvent;
@class MPSEWSWorkingHours;



/* FreeBusyView */
@interface MPSEWSFreeBusyView : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>*  freeBusyViewType    /* MPSEWSFreeBusyViewType */;
@property (strong) NSString*                   mergedFreeBusy      /* xs:string */;
@property (strong) MPSEWSArrayOfCalendarEvent* calendarEventArray;
@property (strong) MPSEWSWorkingHours*         workingHours;


@end

