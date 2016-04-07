#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetSharingMetadataType.h"
#import "../types/MPSEWSArrayOfSmtpAddressType.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSNonEmptyStringType.h"


@implementation MPSEWSGetSharingMetadataType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetSharingMetadataType class]];

    [handler property      : @"idOfFolderToShare"
             withNamespace : 'm'
             withXmlTag    : @"IdOfFolderToShare"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"senderSmtpAddress"
             withNamespace : 'm'
             withXmlTag    : @"SenderSmtpAddress"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"recipients"
             withNamespace : 'm'
             withXmlTag    : @"Recipients"
             withHandler   : [MPSEWSArrayOfSmtpAddressType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetSharingMetadataType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val idOfFolderToShare] && ![MPSEWSFolderIdType isValid:[val idOfFolderToShare] forVersion:ver]) return FALSE;
    if ([val senderSmtpAddress] && ![MPSEWSNonEmptyStringType isValid:[val senderSmtpAddress] forVersion:ver]) return FALSE;
    if ([val recipients] && ![MPSEWSArrayOfSmtpAddressType isValid:[val recipients] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetSharingMetadataType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetSharingMetadataType: IdOfFolderToShare=%@ SenderSmtpAddress=%@ Recipients=%@ super=%@", _idOfFolderToShare, _senderSmtpAddress, _recipients, [super description]];
}

@end

