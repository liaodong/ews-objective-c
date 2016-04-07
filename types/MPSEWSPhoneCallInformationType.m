#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPhoneCallInformationType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSConnectionFailureCauseType.h"
#import "../types/MPSEWSPhoneCallStateType.h"


@implementation MPSEWSPhoneCallInformationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPhoneCallInformationType class]];

    [handler property      : @"phoneCallState"
             withNamespace : 't'
             withXmlTag    : @"PhoneCallState"
             withHandler   : [MPSEWSPhoneCallStateType class]];

    [handler property      : @"connectionFailureCause"
             withNamespace : 't'
             withXmlTag    : @"ConnectionFailureCause"
             withHandler   : [MPSEWSConnectionFailureCauseType class]];

    [handler property      : @"sIPResponseText"
             withNamespace : 't'
             withXmlTag    : @"SIPResponseText"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"sIPResponseCode"
             withNamespace : 't'
             withXmlTag    : @"SIPResponseCode"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSPhoneCallInformationType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val phoneCallState] && ![MPSEWSPhoneCallStateType isValid:[val phoneCallState] forVersion:ver]) return FALSE;
    if ([val connectionFailureCause] && ![MPSEWSConnectionFailureCauseType isValid:[val connectionFailureCause] forVersion:ver]) return FALSE;
    if ([val sIPResponseText] && ![MPSEWSStringTypeHandler isValid:[val sIPResponseText] forVersion:ver]) return FALSE;
    if ([val sIPResponseCode] && ![MPSEWSIntegerTypeHandler isValid:[val sIPResponseCode] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPhoneCallInformationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PhoneCallInformationType: PhoneCallState=%@ ConnectionFailureCause=%@ SIPResponseText=%@ SIPResponseCode=%@", _phoneCallState, _connectionFailureCause, _sIPResponseText, _sIPResponseCode];
}

@end

