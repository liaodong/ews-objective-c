#import <Foundation/Foundation.h>



@class EWSCalendarEvent;



/* ArrayOfCalendarEvent */
@interface EWSArrayOfCalendarEvent : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSCalendarEvent*>* calendarEvent;


- (void) addCalendarEvent:(EWSCalendarEvent*) elem;
@end

