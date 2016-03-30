#import <Foundation/Foundation.h>
#import "MPSEWSResponseObjectType.h"






/* ReferenceItemResponseType */
@interface MPSEWSReferenceItemResponseType : MPSEWSResponseObjectType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSReferenceItemResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

