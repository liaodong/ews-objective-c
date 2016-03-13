#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetUserAvailabilityResponseType.h"


@implementation EWSGetUserAvailabilityResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetUserAvailabilityResponseType class]];

    [handler property      : @"freeBusyResponseArray"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"FreeBusyResponseArray"
             withHandler   : [EWSArrayOfFreeBusyResponse class]];

    [handler property      : @"suggestionsResponse"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SuggestionsResponse"
             withHandler   : [EWSSuggestionsResponseType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGetUserAvailabilityResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetUserAvailabilityResponseType: FreeBusyResponseArray=%@ SuggestionsResponse=%@", _freeBusyResponseArray, _suggestionsResponse];
}

@end

