#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUserOofSettings.h"
#import "../types/MPSEWSDuration.h"
#import "../types/MPSEWSExternalAudience.h"
#import "../types/MPSEWSOofState.h"
#import "../types/MPSEWSReplyBody.h"


@implementation MPSEWSUserOofSettings 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUserOofSettings class]];

    [handler property      : @"oofState"
             withNamespace : 't'
             withXmlTag    : @"OofState"
             withHandler   : [MPSEWSOofState class]];

    [handler property      : @"externalAudience"
             withNamespace : 't'
             withXmlTag    : @"ExternalAudience"
             withHandler   : [MPSEWSExternalAudience class]];

    [handler property      : @"duration"
             withNamespace : 't'
             withXmlTag    : @"Duration"
             withHandler   : [MPSEWSDuration class]];

    [handler property      : @"internalReply"
             withNamespace : 't'
             withXmlTag    : @"InternalReply"
             withHandler   : [MPSEWSReplyBody class]];

    [handler property      : @"externalReply"
             withNamespace : 't'
             withXmlTag    : @"ExternalReply"
             withHandler   : [MPSEWSReplyBody class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUserOofSettings class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UserOofSettings: OofState=%@ ExternalAudience=%@ Duration=%@ InternalReply=%@ ExternalReply=%@", _oofState, _externalAudience, _duration, _internalReply, _externalReply];
}

@end

