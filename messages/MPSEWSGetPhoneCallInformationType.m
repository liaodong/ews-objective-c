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

+ (BOOL) isValid:(MPSEWSGetPhoneCallInformationType*) val
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
    return [MPSEWSGetPhoneCallInformationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetPhoneCallInformationType: PhoneCallId=%@ super=%@", _phoneCallId, [super description]];
}

@end

