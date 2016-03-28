#import <Foundation/Foundation.h>
#import "MPSEWSBaseObjectChangedEventType.h"



@class MPSEWSFolderIdType;



/* MovedCopiedEventType */
@interface MPSEWSMovedCopiedEventType : MPSEWSBaseObjectChangedEventType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType* oldParentFolderId;


@end

