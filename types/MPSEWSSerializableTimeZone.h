#import <Foundation/Foundation.h>



@class MPSEWSSerializableTimeZoneTime;



/* SerializableTimeZone */
@interface MPSEWSSerializableTimeZone : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                       bias          /* xs:int */;
@property (strong) MPSEWSSerializableTimeZoneTime* standardTime;
@property (strong) MPSEWSSerializableTimeZoneTime* daylightTime;


@end

