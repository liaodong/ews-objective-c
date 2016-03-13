#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSetUserOofSettingsResponse.h"


@implementation EWSSetUserOofSettingsResponse 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSetUserOofSettingsResponse class]];

    [handler property      : @"responseMessage"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessage"
             withHandler   : [EWSResponseMessageType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSetUserOofSettingsResponse class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SetUserOofSettingsResponse: ResponseMessage=%@", _responseMessage];
}

@end

