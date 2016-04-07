#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSCalendarEvent;



/* ArrayOfCalendarEvent */
@interface MPSEWSArrayOfCalendarEvent : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfCalendarEvent*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSCalendarEvent*>* calendarEvent;


- (void) addCalendarEvent:(MPSEWSCalendarEvent*) elem;
@end

