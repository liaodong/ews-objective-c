#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* ExpandDLResponseType */
@interface MPSEWSExpandDLResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSExpandDLResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

