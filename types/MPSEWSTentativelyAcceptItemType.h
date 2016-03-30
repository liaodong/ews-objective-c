#import <Foundation/Foundation.h>
#import "MPSEWSWellKnownResponseObjectType.h"






/* TentativelyAcceptItemType */
@interface MPSEWSTentativelyAcceptItemType : MPSEWSWellKnownResponseObjectType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTentativelyAcceptItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

