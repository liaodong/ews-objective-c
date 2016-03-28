#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetUserOofSettingsResponse.h"
#import "../messages/EWSResponseMessageType.h"
#import "../types/EWSExternalAudience.h"
#import "../types/EWSUserOofSettings.h"


@implementation EWSGetUserOofSettingsResponse 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetUserOofSettingsResponse class]];

    [handler property      : @"responseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessage"
             withHandler   : [EWSResponseMessageType class]];

    [handler property      : @"oofSettings"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"OofSettings"
             withHandler   : [EWSUserOofSettings class]];

    [handler property      : @"allowExternalOof"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"AllowExternalOof"
             withHandler   : [EWSExternalAudience class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGetUserOofSettingsResponse class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetUserOofSettingsResponse: ResponseMessage=%@ OofSettings=%@ AllowExternalOof=%@", _responseMessage, _oofSettings, _allowExternalOof];
}

@end

