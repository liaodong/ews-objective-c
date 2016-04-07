#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRequestTypeHeader.h"
#import "../types/MPSEWSAvailabilityProxyRequestType.h"


@implementation MPSEWSRequestTypeHeader 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRequestTypeHeader class]];

    [handler property      : @"requestType"
             withNamespace : 't'
             withXmlTag    : @"RequestType"
             withHandler   : [MPSEWSAvailabilityProxyRequestType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRequestTypeHeader*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val requestType] && ![MPSEWSAvailabilityProxyRequestType isValid:[val requestType] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRequestTypeHeader class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RequestTypeHeader: RequestType=%@", _requestType];
}

@end

