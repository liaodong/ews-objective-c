#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* CreateManagedFolderResponseType */
@interface MPSEWSCreateManagedFolderResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCreateManagedFolderResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

