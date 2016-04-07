#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* TrackingPropertyType */
@interface MPSEWSTrackingPropertyType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTrackingPropertyType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* name   /* xs:string */;
@property (strong) NSString* value  /* xs:string */;


@end

