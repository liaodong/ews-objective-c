#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDisconnectPhoneCallType.h"
#import "../types/MPSEWSPhoneCallIdType.h"


@implementation MPSEWSDisconnectPhoneCallType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDisconnectPhoneCallType class]];

    [handler property      : @"phoneCallId"
             withNamespace : 'm'
             withXmlTag    : @"PhoneCallId"
             withHandler   : [MPSEWSPhoneCallIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDisconnectPhoneCallType*) val forVersion:(MPSEWSExchangeVersion) ver
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
    return [MPSEWSDisconnectPhoneCallType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DisconnectPhoneCallType: PhoneCallId=%@ super=%@", _phoneCallId, [super description]];
}

@end

