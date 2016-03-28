#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFreeBusyResponseType.h"
#import "../messages/MPSEWSResponseMessageType.h"
#import "../types/MPSEWSFreeBusyView.h"


@implementation MPSEWSFreeBusyResponseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFreeBusyResponseType class]];

    [handler property      : @"responseMessage"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler property      : @"freeBusyView"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"FreeBusyView"
             withHandler   : [MPSEWSFreeBusyView class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFreeBusyResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FreeBusyResponseType: ResponseMessage=%@ FreeBusyView=%@", _responseMessage, _freeBusyView];
}

@end

