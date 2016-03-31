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

+ (BOOL) isValid:(MPSEWSDisconnectPhoneCallType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val phoneCallId] && ![MPSEWSPhoneCallIdType isValid:[val phoneCallId]]) return FALSE;
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

