#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* CreateFolderResponseType */
@interface MPSEWSCreateFolderResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCreateFolderResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

