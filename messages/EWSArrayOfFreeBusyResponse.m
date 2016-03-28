#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfFreeBusyResponse.h"
#import "../messages/EWSFreeBusyResponseType.h"


@implementation EWSArrayOfFreeBusyResponse 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfFreeBusyResponse class]];

    [handler listProperty  : @"freeBusyResponse"
             isNonEmpty    : FALSE
             useSelector   : @"addFreeBusyResponse"
             withNamespace : 'm'
             withXmlTag    : @"FreeBusyResponse"
             withHandler   : [EWSFreeBusyResponseType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfFreeBusyResponse class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfFreeBusyResponse: FreeBusyResponse=%@", _freeBusyResponse];
}

- (void) addFreeBusyResponse:(EWSFreeBusyResponseType*) elem
{
    if (![self freeBusyResponse]) {
        [self setFreeBusyResponse:[[NSMutableArray<EWSFreeBusyResponseType*> alloc] init]];
    }
    [_freeBusyResponse addObject:elem];
}

@end

