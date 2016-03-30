#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseSubscriptionRequestType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSNonEmptyArrayOfNotificationEventTypesType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSBaseSubscriptionRequestType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseSubscriptionRequestType class]];

    [handler property      : @"folderIds"
             withNamespace : 't'
             withXmlTag    : @"FolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler property      : @"eventTypes"
             withNamespace : 't'
             withXmlTag    : @"EventTypes"
             withHandler   : [MPSEWSNonEmptyArrayOfNotificationEventTypesType class]];

    [handler property      : @"watermark"
             withNamespace : 't'
             withXmlTag    : @"Watermark"
             withHandler   : [MPSEWSWatermarkType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseSubscriptionRequestType*) val
{   (void) val;
    if ([val folderIds] && ![MPSEWSNonEmptyArrayOfBaseFolderIdsType isValid:[val folderIds]]) return FALSE;
    if ([val eventTypes] && ![MPSEWSNonEmptyArrayOfNotificationEventTypesType isValid:[val eventTypes]]) return FALSE;
    if ([val watermark] && ![MPSEWSWatermarkType isValid:[val watermark]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseSubscriptionRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseSubscriptionRequestType: FolderIds=%@ EventTypes=%@ Watermark=%@", _folderIds, _eventTypes, _watermark];
}

@end

