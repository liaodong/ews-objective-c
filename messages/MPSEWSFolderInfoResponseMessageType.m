#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFolderInfoResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../handlers/MPSEWSXmlContentTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSArrayOfFoldersType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSFolderInfoResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFolderInfoResponseMessageType class]];

    [handler property    : @"responseClass"
             withAttrTag : @"ResponseClass"
             withHandler : [MPSEWSResponseClassType class]];

    [handler property      : @"messageText"
             withNamespace : 'm'
             withXmlTag    : @"MessageText"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"responseCode"
             withNamespace : 'm'
             withXmlTag    : @"ResponseCode"
             withHandler   : [MPSEWSResponseCodeType class]];

    [handler property      : @"descriptiveLinkKey"
             withNamespace : 'm'
             withXmlTag    : @"DescriptiveLinkKey"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"messageXml"
             withNamespace : 'm'
             withXmlTag    : @"MessageXml"
             withHandler   : [MPSEWSXmlContentTypeHandler class]];

    [handler property      : @"folders"
             withNamespace : 'm'
             withXmlTag    : @"Folders"
             withHandler   : [MPSEWSArrayOfFoldersType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFolderInfoResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val forVersion:ver]) return FALSE;
    if ([val folders] && ![MPSEWSArrayOfFoldersType isValid:[val folders] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFolderInfoResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FolderInfoResponseMessageType: Folders=%@ super=%@", _folders, [super description]];
}

@end

