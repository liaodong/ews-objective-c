#import <Foundation/Foundation.h>
#import "MPSEWSResponseObjectCoreType.h"






/* ResponseObjectType */
@interface MPSEWSResponseObjectType : MPSEWSResponseObjectCoreType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* objectName  /* xs:string */;


@end

