#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSSyncFolderItemsChangesType;



/* SyncFolderItemsResponseMessageType */
@interface MPSEWSSyncFolderItemsResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderItemsResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                         syncState                /* xs:string */;
@property (strong) NSNumber*                         includesLastItemInRange  /* xs:boolean */;
@property (strong) MPSEWSSyncFolderItemsChangesType* changes;


@end

