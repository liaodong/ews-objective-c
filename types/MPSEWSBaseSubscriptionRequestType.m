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

