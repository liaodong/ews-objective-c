#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSSyncFolderItemsChangesType.h"
#import "EWSResponseMessageType.h"



/* SyncFolderItemsResponseMessageType */
@interface EWSSyncFolderItemsResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                      syncState                /* xs:string */;
@property (retain) NSNumber*                      includesLastItemInRange  /* xs:boolean */;
@property (retain) EWSSyncFolderItemsChangesType* changes;


@end

