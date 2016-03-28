#import <Foundation/Foundation.h>



@class EWSSerializableTimeZoneTime;



/* SerializableTimeZone */
@interface EWSSerializableTimeZone : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                    bias          /* xs:int */;
@property (strong) EWSSerializableTimeZoneTime* standardTime;
@property (strong) EWSSerializableTimeZoneTime* daylightTime;


@end

