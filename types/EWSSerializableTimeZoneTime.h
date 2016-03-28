#import <Foundation/Foundation.h>






/* SerializableTimeZoneTime */
@interface EWSSerializableTimeZoneTime : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* bias       /* xs:int */;
@property (strong) NSString* time       /* xs:string */;
@property (strong) NSNumber* dayOrder   /* xs:short */;
@property (strong) NSNumber* month      /* xs:short */;
@property (strong) NSString* dayOfWeek  /* EWSDayOfWeekType */;
@property (strong) NSString* year       /* xs:string */;


@end

