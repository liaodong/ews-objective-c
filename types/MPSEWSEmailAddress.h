#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* EmailAddress */
@interface MPSEWSEmailAddress : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSEmailAddress*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* name         /* xs:string */;
@property (strong) NSString* address      /* xs:string */;
@property (strong) NSString* routingType  /* xs:string */;


@end

