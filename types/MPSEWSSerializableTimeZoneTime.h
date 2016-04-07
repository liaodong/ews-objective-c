#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* SerializableTimeZoneTime */
@interface MPSEWSSerializableTimeZoneTime : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSerializableTimeZoneTime*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* bias       /* xs:int */;
@property (strong) NSString* time       /* xs:string */;
@property (strong) NSNumber* dayOrder   /* xs:short */;
@property (strong) NSNumber* month      /* xs:short */;
@property (strong) NSString* dayOfWeek  /* MPSEWSDayOfWeekType */;
@property (strong) NSString* year       /* xs:string */;


@end

