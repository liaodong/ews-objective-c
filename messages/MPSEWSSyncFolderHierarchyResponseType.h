#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SyncFolderHierarchyResponseType */
@interface MPSEWSSyncFolderHierarchyResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

