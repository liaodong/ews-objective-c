#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSOutOfOfficeMailTip.h"
#import "../types/MPSEWSDuration.h"
#import "../types/MPSEWSReplyBody.h"


@implementation MPSEWSOutOfOfficeMailTip 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSOutOfOfficeMailTip class]];

    [handler property      : @"replyBody"
             withNamespace : 't'
             withXmlTag    : @"ReplyBody"
             withHandler   : [MPSEWSReplyBody class]];

    [handler property      : @"duration"
             withNamespace : 't'
             withXmlTag    : @"Duration"
             withHandler   : [MPSEWSDuration class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSOutOfOfficeMailTip*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val replyBody] && ![MPSEWSReplyBody isValid:[val replyBody] forVersion:ver]) return FALSE;
    if ([val duration] && ![MPSEWSDuration isValid:[val duration] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSOutOfOfficeMailTip class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"OutOfOfficeMailTip: ReplyBody=%@ Duration=%@", _replyBody, _duration];
}

@end

