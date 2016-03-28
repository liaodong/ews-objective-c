#import <Foundation/Foundation.h>



@class MPSEWSArrayOfWorkingPeriod;
@class MPSEWSSerializableTimeZone;



/* WorkingHours */
@interface MPSEWSWorkingHours : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSSerializableTimeZone* timeZone;
@property (strong) MPSEWSArrayOfWorkingPeriod* workingPeriodArray;


@end

