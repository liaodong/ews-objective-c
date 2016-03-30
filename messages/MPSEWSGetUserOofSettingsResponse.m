#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetUserOofSettingsResponse.h"
#import "../messages/MPSEWSResponseMessageType.h"
#import "../types/MPSEWSExternalAudience.h"
#import "../types/MPSEWSUserOofSettings.h"


@implementation MPSEWSGetUserOofSettingsResponse 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetUserOofSettingsResponse class]];

    [handler property      : @"responseMessage"
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler property      : @"oofSettings"
             withNamespace : 't'
             withXmlTag    : @"OofSettings"
             withHandler   : [MPSEWSUserOofSettings class]];

    [handler property      : @"allowExternalOof"
             withNamespace : 'm'
             withXmlTag    : @"AllowExternalOof"
             withHandler   : [MPSEWSExternalAudience class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetUserOofSettingsResponse*) val
{   (void) val;
    if ([val responseMessage] && ![MPSEWSResponseMessageType isValid:[val responseMessage]]) return FALSE;
    if ([val oofSettings] && ![MPSEWSUserOofSettings isValid:[val oofSettings]]) return FALSE;
    if ([val allowExternalOof] && ![MPSEWSExternalAudience isValid:[val allowExternalOof]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetUserOofSettingsResponse class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetUserOofSettingsResponse: ResponseMessage=%@ OofSettings=%@ AllowExternalOof=%@", _responseMessage, _oofSettings, _allowExternalOof];
}

@end

