#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfTimeZoneIdType;



/* GetServerTimeZonesType */
@interface MPSEWSGetServerTimeZonesType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetServerTimeZonesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                            returnFullTimeZoneData  /* xs:boolean */;
@property (strong) MPSEWSNonEmptyArrayOfTimeZoneIdType* ids;


@end

