#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSSyncFolderHierarchyChangesType;



/* SyncFolderHierarchyResponseMessageType */
@interface MPSEWSSyncFolderHierarchyResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                             syncState                  /* xs:string */;
@property (strong) NSNumber*                             includesLastFolderInRange  /* xs:boolean */;
@property (strong) MPSEWSSyncFolderHierarchyChangesType* changes;


@end

