#import <Foundation/Foundation.h>



@class MPSEWSCalendarEvent;



/* ArrayOfCalendarEvent */
@interface MPSEWSArrayOfCalendarEvent : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfCalendarEvent*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSCalendarEvent*>* calendarEvent;


- (void) addCalendarEvent:(MPSEWSCalendarEvent*) elem;
@end

