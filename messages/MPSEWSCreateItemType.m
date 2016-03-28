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
             isRequired  : FALSE
             withAttrTag : @"MessageDisposition"
             withHandler : [MPSEWSMessageDispositionType class]];

    [handler property    : @"sendMeetingInvitations"
             isRequired  : FALSE
             withAttrTag : @"SendMeetingInvitations"
             withHandler : [MPSEWSCalendarItemCreateOrDeleteOperationType class]];

    [handler property      : @"savedItemFolderId"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SavedItemFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"items"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Items"
             withHandler   : [MPSEWSNonEmptyArrayOfAllItemsType class]];

    [handler register];
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

