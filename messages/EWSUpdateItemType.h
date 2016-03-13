#import <Foundation/Foundation.h>




#import "../types/EWSCalendarItemUpdateOperationType.h"
#import "../types/EWSConflictResolutionType.h"
#import "../types/EWSMessageDispositionType.h"
#import "../types/EWSNonEmptyArrayOfItemChangesType.h"
#import "../types/EWSTargetFolderIdType.h"
#import "EWSBaseRequestType.h"



/* UpdateItemType */
@interface EWSUpdateItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                    conflictResolution                     /* EWSConflictResolutionType */;
@property (retain) NSString*                    messageDisposition                     /* EWSMessageDispositionType */;
@property (retain) NSString*                    sendMeetingInvitationsOrCancellations  /* EWSCalendarItemUpdateOperationType */;
@property (retain) EWSTargetFolderIdType*       savedItemFolderId;
@property (retain) NSArray<EWSItemChangeType*>* itemChanges                            /* EWSNonEmptyArrayOfItemChangesType */;


@end

