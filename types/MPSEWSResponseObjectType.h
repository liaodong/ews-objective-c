#import <Foundation/Foundation.h>
#import "MPSEWSResponseObjectCoreType.h"






/* ResponseObjectType */
@interface MPSEWSResponseObjectType : MPSEWSResponseObjectCoreType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSResponseObjectType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* objectName  /* xs:string */;


@end

