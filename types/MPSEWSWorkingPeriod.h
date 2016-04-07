#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* WorkingPeriod */
@interface MPSEWSWorkingPeriod : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSWorkingPeriod*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<NSString*>* dayOfWeek           /* MPSEWSDaysOfWeekType */;
@property (strong) NSNumber*                  startTimeInMinutes  /* xs:int */;
@property (strong) NSNumber*                  endTimeInMinutes    /* xs:int */;


@end

