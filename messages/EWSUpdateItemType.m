#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSUpdateItemType.h"
#import "../types/EWSCalendarItemUpdateOperationType.h"
#import "../types/EWSConflictResolutionType.h"
#import "../types/EWSMessageDispositionType.h"
#import "../types/EWSNonEmptyArrayOfItemChangesType.h"
#import "../types/EWSTargetFolderIdType.h"


@implementation EWSUpdateItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSUpdateItemType class]];

    [handler property    : @"conflictResolution"
             isRequired  : TRUE
             withAttrTag : @"ConflictResolution"
             withHandler : [EWSConflictResolutionType class]];

    [handler property    : @"messageDisposition"
             isRequired  : FALSE
             withAttrTag : @"MessageDisposition"
             withHandler : [EWSMessageDispositionType class]];

    [handler property    : @"sendMeetingInvitationsOrCancellations"
             isRequired  : FALSE
             withAttrTag : @"SendMeetingInvitationsOrCancellations"
             withHandler : [EWSCalendarItemUpdateOperationType class]];

    [handler property      : @"savedItemFolderId"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SavedItemFolderId"
             withHandler   : [EWSTargetFolderIdType class]];

    [handler property      : @"itemChanges"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemChanges"
             withHandler   : [EWSNonEmptyArrayOfItemChangesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSUpdateItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UpdateItemType: ConflictResolution=%@ MessageDisposition=%@ SendMeetingInvitationsOrCancellations=%@ SavedItemFolderId=%@ ItemChanges=%@ super=%@", _conflictResolution, _messageDisposition, _sendMeetingInvitationsOrCancellations, _savedItemFolderId, _itemChanges, [super description]];
}

@end

