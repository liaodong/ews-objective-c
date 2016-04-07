#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCreateItemType.h"
#import "../types/MPSEWSCalendarItemCreateOrDeleteOperationType.h"
#import "../types/MPSEWSMessageDispositionType.h"
#import "../types/MPSEWSNonEmptyArrayOfAllItemsType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSCreateItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCreateItemType class]];

    [handler property    : @"messageDisposition"
             withAttrTag : @"MessageDisposition"
             withHandler : [MPSEWSMessageDispositionType class]];

    [handler property    : @"sendMeetingInvitations"
             withAttrTag : @"SendMeetingInvitations"
             withHandler : [MPSEWSCalendarItemCreateOrDeleteOperationType class]];

    [handler property      : @"savedItemFolderId"
             withNamespace : 'm'
             withXmlTag    : @"SavedItemFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"items"
             withNamespace : 'm'
             withXmlTag    : @"Items"
             withHandler   : [MPSEWSNonEmptyArrayOfAllItemsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCreateItemType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val messageDisposition] && ![MPSEWSMessageDispositionType isValid:[val messageDisposition] forVersion: ver]) return FALSE;
    if ([val sendMeetingInvitations] && ![MPSEWSCalendarItemCreateOrDeleteOperationType isValid:[val sendMeetingInvitations] forVersion: ver]) return FALSE;
    if ([val savedItemFolderId] && ![MPSEWSTargetFolderIdType isValid:[val savedItemFolderId] forVersion:ver]) return FALSE;
    if ([val items] && ![MPSEWSNonEmptyArrayOfAllItemsType isValid:[val items] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCreateItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateItemType: MessageDisposition=%@ SendMeetingInvitations=%@ SavedItemFolderId=%@ Items=%@ super=%@", _messageDisposition, _sendMeetingInvitations, _savedItemFolderId, _items, [super description]];
}

@end

