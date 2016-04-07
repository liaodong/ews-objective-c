#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* SidAndAttributesType */
@interface MPSEWSSidAndAttributesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSidAndAttributesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* attributes          /* xs:unsignedInt */;
@property (strong) NSString* securityIdentifier  /* xs:string */;


@end

