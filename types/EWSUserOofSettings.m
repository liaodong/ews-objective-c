#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSUserOofSettings.h"


@implementation EWSUserOofSettings 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSUserOofSettings class]];

    [handler property   : @"oofState"
             isRequired : TRUE
             withXmlTag : @"OofState"
             withHandler: [EWSOofState class]];

    [handler property   : @"externalAudience"
             isRequired : TRUE
             withXmlTag : @"ExternalAudience"
             withHandler: [EWSExternalAudience class]];

    [handler property   : @"duration"
             isRequired : FALSE
             withXmlTag : @"Duration"
             withHandler: [EWSDuration class]];

    [handler property   : @"internalReply"
             isRequired : FALSE
             withXmlTag : @"InternalReply"
             withHandler: [EWSReplyBody class]];

    [handler property   : @"externalReply"
             isRequired : FALSE
             withXmlTag : @"ExternalReply"
             withHandler: [EWSReplyBody class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSUserOofSettings class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UserOofSettings: OofState=%@ ExternalAudience=%@ Duration=%@ InternalReply=%@ ExternalReply=%@", _oofState, _externalAudience, _duration, _internalReply, _externalReply];
}

@end

