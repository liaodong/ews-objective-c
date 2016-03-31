#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetSharingMetadataResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSArrayOfEncryptedSharedFolderDataType.h"
#import "../types/MPSEWSArrayOfInvalidRecipientsType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSGetSharingMetadataResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetSharingMetadataResponseMessageType class]];

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
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"encryptedSharedFolderDataCollection"
             withNamespace : 'm'
             withXmlTag    : @"EncryptedSharedFolderDataCollection"
             withHandler   : [MPSEWSArrayOfEncryptedSharedFolderDataType class]];

    [handler property      : @"invalidRecipients"
             withNamespace : 'm'
             withXmlTag    : @"InvalidRecipients"
             withHandler   : [MPSEWSArrayOfInvalidRecipientsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetSharingMetadataResponseMessageType*) val
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val]) return FALSE;
    if ([val encryptedSharedFolderDataCollection] && ![MPSEWSArrayOfEncryptedSharedFolderDataType isValid:[val encryptedSharedFolderDataCollection]]) return FALSE;
    if ([val invalidRecipients] && ![MPSEWSArrayOfInvalidRecipientsType isValid:[val invalidRecipients]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetSharingMetadataResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetSharingMetadataResponseMessageType: EncryptedSharedFolderDataCollection=%@ InvalidRecipients=%@ super=%@", _encryptedSharedFolderDataCollection, _invalidRecipients, [super description]];
}

@end

