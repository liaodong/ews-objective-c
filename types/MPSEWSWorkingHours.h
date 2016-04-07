#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfWorkingPeriod;
@class MPSEWSSerializableTimeZone;



/* WorkingHours */
@interface MPSEWSWorkingHours : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSWorkingHours*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSSerializableTimeZone* timeZone;
@property (strong) MPSEWSArrayOfWorkingPeriod* workingPeriodArray;


@end

