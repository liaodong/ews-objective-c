#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfFreeBusyResponse.h"
#import "../messages/MPSEWSFreeBusyResponseType.h"


@implementation MPSEWSArrayOfFreeBusyResponse 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfFreeBusyResponse class]];

    [handler listProperty  : @"freeBusyResponse"
             useSelector   : @"addFreeBusyResponse"
             withNamespace : 'm'
             withXmlTag    : @"FreeBusyResponse"
             withHandler   : [MPSEWSFreeBusyResponseType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfFreeBusyResponse*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfFreeBusyResponse class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfFreeBusyResponse: FreeBusyResponse=%@", _freeBusyResponse];
}

- (void) addFreeBusyResponse:(MPSEWSFreeBusyResponseType*) elem
{
    if (![self freeBusyResponse]) {
        [self setFreeBusyResponse:[[NSMutableArray<MPSEWSFreeBusyResponseType*> alloc] init]];
    }
    [_freeBusyResponse addObject:elem];
}

@end

