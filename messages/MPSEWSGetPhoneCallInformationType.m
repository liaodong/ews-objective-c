#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetPhoneCallInformationType.h"
#import "../types/MPSEWSPhoneCallIdType.h"


@implementation MPSEWSGetPhoneCallInformationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetPhoneCallInformationType class]];

    [handler property      : @"phoneCallId"
             withNamespace : 'm'
             withXmlTag    : @"PhoneCallId"
             withHandler   : [MPSEWSPhoneCallIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetPhoneCallInformationType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val phoneCallId] && ![MPSEWSPhoneCallIdType isValid:[val phoneCallId] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetPhoneCallInformationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetPhoneCallInformationType: PhoneCallId=%@ super=%@", _phoneCallId, [super description]];
}

@end

