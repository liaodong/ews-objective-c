#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSSyncFolderHierarchyChangesType.h"
#import "EWSResponseMessageType.h"



/* SyncFolderHierarchyResponseMessageType */
@interface EWSSyncFolderHierarchyResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                          syncState                  /* xs:string */;
@property (retain) NSNumber*                          includesLastFolderInRange  /* xs:boolean */;
@property (retain) EWSSyncFolderHierarchyChangesType* changes;


@end

