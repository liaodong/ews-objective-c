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
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler property      : @"oofSettings"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"OofSettings"
             withHandler   : [MPSEWSUserOofSettings class]];

    [handler property      : @"allowExternalOof"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"AllowExternalOof"
             withHandler   : [MPSEWSExternalAudience class]];

    [handler register];
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

