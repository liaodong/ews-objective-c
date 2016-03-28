#import <Foundation/Foundation.h>
#import "EWSResponseObjectCoreType.h"






/* ResponseObjectType */
@interface EWSResponseObjectType : EWSResponseObjectCoreType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* objectName  /* xs:string */;


@end

