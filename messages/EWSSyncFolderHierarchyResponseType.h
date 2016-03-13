#import <Foundation/Foundation.h>




#import "EWSBaseResponseMessageType.h"



/* SyncFolderHierarchyResponseType */
@interface EWSSyncFolderHierarchyResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

