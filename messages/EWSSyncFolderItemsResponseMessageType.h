#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSSyncFolderItemsChangesType;



/* SyncFolderItemsResponseMessageType */
@interface EWSSyncFolderItemsResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                      syncState                /* xs:string */;
@property (strong) NSNumber*                      includesLastItemInRange  /* xs:boolean */;
@property (strong) EWSSyncFolderItemsChangesType* changes;


@end

