#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUpdateItemType.h"
#import "../types/MPSEWSCalendarItemUpdateOperationType.h"
#import "../types/MPSEWSConflictResolutionType.h"
#import "../types/MPSEWSMessageDispositionType.h"
#import "../types/MPSEWSNonEmptyArrayOfItemChangesType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSUpdateItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUpdateItemType class]];

    [handler property    : @"conflictResolution"
             withAttrTag : @"ConflictResolution"
             withHandler : [MPSEWSConflictResolutionType class]];

    [handler property    : @"messageDisposition"
             withAttrTag : @"MessageDisposition"
             withHandler : [MPSEWSMessageDispositionType class]];

    [handler property    : @"sendMeetingInvitationsOrCancellations"
             withAttrTag : @"SendMeetingInvitationsOrCancellations"
             withHandler : [MPSEWSCalendarItemUpdateOperationType class]];

    [handler property      : @"savedItemFolderId"
             withNamespace : 'm'
             withXmlTag    : @"SavedItemFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"itemChanges"
             withNamespace : 'm'
             withXmlTag    : @"ItemChanges"
             withHandler   : [MPSEWSNonEmptyArrayOfItemChangesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUpdateItemType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val conflictResolution] && ![MPSEWSConflictResolutionType isValid:[val conflictResolution] forVersion: ver]) return FALSE;
    if ([val messageDisposition] && ![MPSEWSMessageDispositionType isValid:[val messageDisposition] forVersion: ver]) return FALSE;
    if ([val sendMeetingInvitationsOrCancellations] && ![MPSEWSCalendarItemUpdateOperationType isValid:[val sendMeetingInvitationsOrCancellations] forVersion: ver]) return FALSE;
    if ([val savedItemFolderId] && ![MPSEWSTargetFolderIdType isValid:[val savedItemFolderId] forVersion:ver]) return FALSE;
    if ([val itemChanges] && ![MPSEWSNonEmptyArrayOfItemChangesType isValid:[val itemChanges] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUpdateItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UpdateItemType: ConflictResolution=%@ MessageDisposition=%@ SendMeetingInvitationsOrCancellations=%@ SavedItemFolderId=%@ ItemChanges=%@ super=%@", _conflictResolution, _messageDisposition, _sendMeetingInvitationsOrCancellations, _savedItemFolderId, _itemChanges, [super description]];
}

@end

