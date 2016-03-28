#import <Foundation/Foundation.h>
#import "EWSBaseObjectChangedEventType.h"



@class EWSFolderIdType;



/* MovedCopiedEventType */
@interface EWSMovedCopiedEventType : EWSBaseObjectChangedEventType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSFolderIdType* oldParentFolderId;


@end

