#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFreeBusyResponseType.h"


@implementation EWSFreeBusyResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFreeBusyResponseType class]];

    [handler property      : @"responseMessage"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessage"
             withHandler   : [EWSResponseMessageType class]];

    [handler property      : @"freeBusyView"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"FreeBusyView"
             withHandler   : [EWSFreeBusyView class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFreeBusyResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FreeBusyResponseType: ResponseMessage=%@ FreeBusyView=%@", _responseMessage, _freeBusyView];
}

@end

