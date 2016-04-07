#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUnifiedMessageServiceConfiguration.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSUnifiedMessageServiceConfiguration 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUnifiedMessageServiceConfiguration class]];

    [handler property      : @"umEnabled"
             withNamespace : 't'
             withXmlTag    : @"UmEnabled"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"playOnPhoneDialString"
             withNamespace : 't'
             withXmlTag    : @"PlayOnPhoneDialString"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"playOnPhoneEnabled"
             withNamespace : 't'
             withXmlTag    : @"PlayOnPhoneEnabled"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUnifiedMessageServiceConfiguration*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSServiceConfiguration isValid:val forVersion:ver]) return FALSE;
    if ([val umEnabled] && ![MPSEWSBooleanTypeHandler isValid:[val umEnabled] forVersion:ver]) return FALSE;
    if ([val playOnPhoneDialString] && ![MPSEWSStringTypeHandler isValid:[val playOnPhoneDialString] forVersion:ver]) return FALSE;
    if ([val playOnPhoneEnabled] && ![MPSEWSBooleanTypeHandler isValid:[val playOnPhoneEnabled] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUnifiedMessageServiceConfiguration class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UnifiedMessageServiceConfiguration: UmEnabled=%@ PlayOnPhoneDialString=%@ PlayOnPhoneEnabled=%@ super=%@", _umEnabled, _playOnPhoneDialString, _playOnPhoneEnabled, [super description]];
}

@end

