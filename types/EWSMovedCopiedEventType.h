#import <Foundation/Foundation.h>




#import "../types/EWSFolderIdType.h"
#import "EWSBaseObjectChangedEventType.h"



/* MovedCopiedEventType */
@interface EWSMovedCopiedEventType : EWSBaseObjectChangedEventType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSFolderIdType* oldParentFolderId;


@end

