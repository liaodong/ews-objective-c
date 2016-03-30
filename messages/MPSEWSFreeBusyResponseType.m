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
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler property      : @"freeBusyView"
             withNamespace : 'm'
             withXmlTag    : @"FreeBusyView"
             withHandler   : [MPSEWSFreeBusyView class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFreeBusyResponseType*) val
{   (void) val;
    if ([val responseMessage] && ![MPSEWSResponseMessageType isValid:[val responseMessage]]) return FALSE;
    if ([val freeBusyView] && ![MPSEWSFreeBusyView isValid:[val freeBusyView]]) return FALSE;
    return TRUE;
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

