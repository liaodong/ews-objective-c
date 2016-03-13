#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSShortTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSDayOfWeekType.h"



/* SerializableTimeZoneTime */
@interface EWSSerializableTimeZoneTime : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* bias       /* xs:int */;
@property (retain) NSString* time       /* xs:string */;
@property (retain) NSNumber* dayOrder   /* xs:short */;
@property (retain) NSNumber* month      /* xs:short */;
@property (retain) NSString* dayOfWeek  /* EWSDayOfWeekType */;
@property (retain) NSString* year       /* xs:string */;


@end

