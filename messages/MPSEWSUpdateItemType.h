#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfItemChangesType;
@class MPSEWSTargetFolderIdType;



/* UpdateItemType */
@interface MPSEWSUpdateItemType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUpdateItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                             conflictResolution                     /* MPSEWSConflictResolutionType */;
@property (strong) NSString*                             messageDisposition                     /* MPSEWSMessageDispositionType */;
@property (strong) NSString*                             sendMeetingInvitationsOrCancellations  /* MPSEWSCalendarItemUpdateOperationType */;
@property (strong) MPSEWSTargetFolderIdType*             savedItemFolderId;
@property (strong) MPSEWSNonEmptyArrayOfItemChangesType* itemChanges;


@end

