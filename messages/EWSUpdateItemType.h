#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfItemChangesType;
@class EWSTargetFolderIdType;



/* UpdateItemType */
@interface EWSUpdateItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                          conflictResolution                     /* EWSConflictResolutionType */;
@property (strong) NSString*                          messageDisposition                     /* EWSMessageDispositionType */;
@property (strong) NSString*                          sendMeetingInvitationsOrCancellations  /* EWSCalendarItemUpdateOperationType */;
@property (strong) EWSTargetFolderIdType*             savedItemFolderId;
@property (strong) EWSNonEmptyArrayOfItemChangesType* itemChanges;


@end

