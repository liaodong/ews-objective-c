#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetMailTipsType.h"
#import "../types/MPSEWSArrayOfRecipientsType.h"
#import "../types/MPSEWSEmailAddressType.h"
#import "../types/MPSEWSMailTipTypes.h"


@implementation MPSEWSGetMailTipsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetMailTipsType class]];

    [handler property      : @"sendingAs"
             withNamespace : 'm'
             withXmlTag    : @"SendingAs"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"recipients"
             withNamespace : 'm'
             withXmlTag    : @"Recipients"
             withHandler   : [MPSEWSArrayOfRecipientsType class]];

    [handler property      : @"mailTipsRequested"
             withNamespace : 'm'
             withXmlTag    : @"MailTipsRequested"
             withHandler   : [MPSEWSMailTipTypes class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetMailTipsType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val sendingAs] && ![MPSEWSEmailAddressType isValid:[val sendingAs]]) return FALSE;
    if ([val recipients] && ![MPSEWSArrayOfRecipientsType isValid:[val recipients]]) return FALSE;
    if ([val mailTipsRequested] && ![MPSEWSMailTipTypes isValid:[val mailTipsRequested]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetMailTipsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetMailTipsType: SendingAs=%@ Recipients=%@ MailTipsRequested=%@ super=%@", _sendingAs, _recipients, _mailTipsRequested, [super description]];
}

@end

