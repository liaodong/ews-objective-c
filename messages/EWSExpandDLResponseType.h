#import <Foundation/Foundation.h>
#import "EWSBaseResponseMessageType.h"






/* ExpandDLResponseType */
@interface EWSExpandDLResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

