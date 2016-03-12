#import <Foundation/Foundation.h>




#import "EWSSerializableTimeZone.h"
#import "EWSArrayOfWorkingPeriod.h"



/* WorkingHours */
@interface EWSWorkingHours : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSSerializableTimeZone*    timeZone;
@property (retain) NSArray<EWSWorkingPeriod*>* workingPeriodArray  /* EWSArrayOfWorkingPeriod */;


@end

