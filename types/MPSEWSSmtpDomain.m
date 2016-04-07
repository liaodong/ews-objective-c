#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSmtpDomain.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSSmtpDomain 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSmtpDomain class]];

    [handler property    : @"name"
             withAttrTag : @"Name"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"includeSubdomains"
             withAttrTag : @"IncludeSubdomains"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSmtpDomain*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val name] && ![MPSEWSStringTypeHandler isValid:[val name] forVersion: ver]) return FALSE;
    if ([val includeSubdomains] && ![MPSEWSBooleanTypeHandler isValid:[val includeSubdomains] forVersion: ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSmtpDomain class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SmtpDomain: Name=%@ IncludeSubdomains=%@", _name, _includeSubdomains];
}

@end

