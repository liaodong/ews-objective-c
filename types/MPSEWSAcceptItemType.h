#import <Foundation/Foundation.h>
#import "MPSEWSWellKnownResponseObjectType.h"






/* AcceptItemType */
@interface MPSEWSAcceptItemType : MPSEWSWellKnownResponseObjectType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAcceptItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

