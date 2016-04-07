#import <Foundation/Foundation.h>
#import "MPSEWSResponseObjectType.h"






/* RemoveItemType */
@interface MPSEWSRemoveItemType : MPSEWSResponseObjectType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRemoveItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

