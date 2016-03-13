#import <Foundation/Foundation.h>




#import "../types/EWSArrayOfWorkingPeriod.h"
#import "../types/EWSSerializableTimeZone.h"



/* WorkingHours */
@interface EWSWorkingHours : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSSerializableTimeZone*    timeZone;
@property (retain) NSArray<EWSWorkingPeriod*>* workingPeriodArray  /* EWSArrayOfWorkingPeriod */;


@end

