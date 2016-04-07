#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetServiceConfigurationType.h"
#import "../messages/MPSEWSArrayOfServiceConfigurationType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSGetServiceConfigurationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetServiceConfigurationType class]];

    [handler property      : @"actingAs"
             withNamespace : 'm'
             withXmlTag    : @"ActingAs"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"requestedConfiguration"
             withNamespace : 'm'
             withXmlTag    : @"RequestedConfiguration"
             withHandler   : [MPSEWSArrayOfServiceConfigurationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetServiceConfigurationType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val actingAs] && ![MPSEWSEmailAddressType isValid:[val actingAs] forVersion:ver]) return FALSE;
    if ([val requestedConfiguration] && ![MPSEWSArrayOfServiceConfigurationType isValid:[val requestedConfiguration] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetServiceConfigurationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetServiceConfigurationType: ActingAs=%@ RequestedConfiguration=%@ super=%@", _actingAs, _requestedConfiguration, [super description]];
}

@end

