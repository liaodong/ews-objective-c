#import <Foundation/Foundation.h>
#import "MPSEWSResponseObjectType.h"






/* WellKnownResponseObjectType */
@interface MPSEWSWellKnownResponseObjectType : MPSEWSResponseObjectType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSWellKnownResponseObjectType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

