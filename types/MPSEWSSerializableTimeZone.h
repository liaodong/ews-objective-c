#import <Foundation/Foundation.h>



@class MPSEWSSerializableTimeZoneTime;



/* SerializableTimeZone */
@interface MPSEWSSerializableTimeZone : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSerializableTimeZone*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                       bias          /* xs:int */;
@property (strong) MPSEWSSerializableTimeZoneTime* standardTime;
@property (strong) MPSEWSSerializableTimeZoneTime* daylightTime;


@end

