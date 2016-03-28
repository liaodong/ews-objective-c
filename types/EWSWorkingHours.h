#import <Foundation/Foundation.h>



@class EWSArrayOfWorkingPeriod;
@class EWSSerializableTimeZone;



/* WorkingHours */
@interface EWSWorkingHours : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSSerializableTimeZone* timeZone;
@property (strong) EWSArrayOfWorkingPeriod* workingPeriodArray;


@end

