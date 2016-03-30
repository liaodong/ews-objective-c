#import <Foundation/Foundation.h>
#import "MPSEWSResponseObjectType.h"






/* RemoveItemType */
@interface MPSEWSRemoveItemType : MPSEWSResponseObjectType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRemoveItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

