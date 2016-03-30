#import <Foundation/Foundation.h>
#import "MPSEWSBaseObjectChangedEventType.h"



@class MPSEWSFolderIdType;
@class MPSEWSItemIdType;



/* MovedCopiedEventType */
@interface MPSEWSMovedCopiedEventType : MPSEWSBaseObjectChangedEventType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMovedCopiedEventType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType* oldFolderId;
@property (strong) MPSEWSItemIdType*   oldItemId;
@property (strong) MPSEWSFolderIdType* oldParentFolderId;


@end

