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

+ (BOOL) isValid:(MPSEWSUserOofSettings*) val
{   (void) val;
    if ([val oofState] && ![MPSEWSOofState isValid:[val oofState]]) return FALSE;
    if ([val externalAudience] && ![MPSEWSExternalAudience isValid:[val externalAudience]]) return FALSE;
    if ([val duration] && ![MPSEWSDuration isValid:[val duration]]) return FALSE;
    if ([val internalReply] && ![MPSEWSReplyBody isValid:[val internalReply]]) return FALSE;
    if ([val externalReply] && ![MPSEWSReplyBody isValid:[val externalReply]]) return FALSE;
    return TRUE;
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

