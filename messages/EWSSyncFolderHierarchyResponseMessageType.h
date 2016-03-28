#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSSyncFolderHierarchyChangesType;



/* SyncFolderHierarchyResponseMessageType */
@interface EWSSyncFolderHierarchyResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                          syncState                  /* xs:string */;
@property (strong) NSNumber*                          includesLastFolderInRange  /* xs:boolean */;
@property (strong) EWSSyncFolderHierarchyChangesType* changes;


@end

