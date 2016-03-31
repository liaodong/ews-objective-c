#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSStreamingSubscriptionRequestType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSNonEmptyArrayOfNotificationEventTypesType.h"


@implementation MPSEWSStreamingSubscriptionRequestType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSStreamingSubscriptionRequestType class]];

    [handler property    : @"subscribeToAllFolders"
             withAttrTag : @"SubscribeToAllFolders"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"folderIds"
             withNamespace : 't'
             withXmlTag    : @"FolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler property      : @"eventTypes"
             withNamespace : 't'
             withXmlTag    : @"EventTypes"
             withHandler   : [MPSEWSNonEmptyArrayOfNotificationEventTypesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSStreamingSubscriptionRequestType*) val
{   (void) val;
    if ([val subscribeToAllFolders] && ![MPSEWSBooleanTypeHandler isValid:[val subscribeToAllFolders]]) return FALSE;
    if ([val folderIds] && ![MPSEWSNonEmptyArrayOfBaseFolderIdsType isValid:[val folderIds]]) return FALSE;
    if ([val eventTypes] && ![MPSEWSNonEmptyArrayOfNotificationEventTypesType isValid:[val eventTypes]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSStreamingSubscriptionRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"StreamingSubscriptionRequestType: SubscribeToAllFolders=%@ FolderIds=%@ EventTypes=%@", _subscribeToAllFolders, _folderIds, _eventTypes];
}

@end

