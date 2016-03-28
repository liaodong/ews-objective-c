#import <Foundation/Foundation.h>
#import "MPSEWSResponseObjectType.h"






/* WellKnownResponseObjectType */
@interface MPSEWSWellKnownResponseObjectType : MPSEWSResponseObjectType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

