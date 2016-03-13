#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "../types/EWSSerializableTimeZoneTime.h"



/* SerializableTimeZone */
@interface EWSSerializableTimeZone : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber*                    bias          /* xs:int */;
@property (retain) EWSSerializableTimeZoneTime* standardTime;
@property (retain) EWSSerializableTimeZoneTime* daylightTime;


@end

