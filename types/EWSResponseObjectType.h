#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSResponseObjectCoreType.h"



/* ResponseObjectType */
@interface EWSResponseObjectType : EWSResponseObjectCoreType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* objectName  /* xs:string */;


@end

