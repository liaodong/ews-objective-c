#import <Foundation/Foundation.h>




#import "EWSDaysOfWeekType.h"
#import "../handlers/EWSIntegerTypeHandler.h"



/* WorkingPeriod */
@interface EWSWorkingPeriod : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSMutableArray<NSString*>* dayOfWeek           /* EWSDaysOfWeekType */;
@property (retain) NSNumber*                  startTimeInMinutes  /* xs:int */;
@property (retain) NSNumber*                  endTimeInMinutes    /* xs:int */;


@end

