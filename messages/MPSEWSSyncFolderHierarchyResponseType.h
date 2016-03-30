#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SyncFolderHierarchyResponseType */
@interface MPSEWSSyncFolderHierarchyResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

