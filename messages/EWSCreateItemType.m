#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCreateItemType.h"


@implementation EWSCreateItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCreateItemType class]];

    [handler property    : @"messageDisposition"
             isRequired  : FALSE
             withAttrTag : @"MessageDisposition"
             withHandler : [EWSMessageDispositionType class]];

    [handler property    : @"sendMeetingInvitations"
             isRequired  : FALSE
             withAttrTag : @"SendMeetingInvitations"
             withHandler : [EWSCalendarItemCreateOrDeleteOperationType class]];

    [handler property      : @"savedItemFolderId"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SavedItemFolderId"
             withHandler   : [EWSTargetFolderIdType class]];

    [handler property      : @"items"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Items"
             withHandler   : [EWSNonEmptyArrayOfAllItemsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCreateItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateItemType: MessageDisposition=%@ SendMeetingInvitations=%@ SavedItemFolderId=%@ Items=%@ super=%@", _messageDisposition, _sendMeetingInvitations, _savedItemFolderId, _items, [super description]];
}

@end

