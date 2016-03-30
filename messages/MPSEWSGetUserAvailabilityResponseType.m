#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetUserAvailabilityResponseType.h"
#import "../messages/MPSEWSArrayOfFreeBusyResponse.h"
#import "../messages/MPSEWSSuggestionsResponseType.h"


@implementation MPSEWSGetUserAvailabilityResponseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetUserAvailabilityResponseType class]];

    [handler property      : @"freeBusyResponseArray"
             withNamespace : 'm'
             withXmlTag    : @"FreeBusyResponseArray"
             withHandler   : [MPSEWSArrayOfFreeBusyResponse class]];

    [handler property      : @"suggestionsResponse"
             withNamespace : 'm'
             withXmlTag    : @"SuggestionsResponse"
             withHandler   : [MPSEWSSuggestionsResponseType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetUserAvailabilityResponseType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetUserAvailabilityResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetUserAvailabilityResponseType: FreeBusyResponseArray=%@ SuggestionsResponse=%@", _freeBusyResponseArray, _suggestionsResponse];
}

@end

