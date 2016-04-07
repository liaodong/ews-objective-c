#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSSerializableTimeZoneTime;



/* SerializableTimeZone */
@interface MPSEWSSerializableTimeZone : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSerializableTimeZone*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                       bias          /* xs:int */;
@property (strong) MPSEWSSerializableTimeZoneTime* standardTime;
@property (strong) MPSEWSSerializableTimeZoneTime* daylightTime;


@end

