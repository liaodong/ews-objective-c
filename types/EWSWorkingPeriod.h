#import <Foundation/Foundation.h>






/* WorkingPeriod */
@interface EWSWorkingPeriod : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* dayOfWeek           /* EWSDaysOfWeekType */;
@property (strong) NSNumber*                  startTimeInMinutes  /* xs:int */;
@property (strong) NSNumber*                  endTimeInMinutes    /* xs:int */;


@end

