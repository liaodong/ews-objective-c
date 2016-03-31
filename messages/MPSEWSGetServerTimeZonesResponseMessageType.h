#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfTimeZoneDefinitionType;



/* GetServerTimeZonesResponseMessageType */
@interface MPSEWSGetServerTimeZonesResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetServerTimeZonesResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfTimeZoneDefinitionType* timeZoneDefinitions;


@end

