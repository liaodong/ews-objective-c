#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSConnectingSIDType.h"
#import "../types/MPSEWSNonEmptyStringType.h"


@implementation MPSEWSConnectingSIDType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSConnectingSIDType class]];

    [handler property      : @"principalName"
             withNamespace : 't'
             withXmlTag    : @"PrincipalName"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"sID"
             withNamespace : 't'
             withXmlTag    : @"SID"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"primarySmtpAddress"
             withNamespace : 't'
             withXmlTag    : @"PrimarySmtpAddress"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"smtpAddress"
             withNamespace : 't'
             withXmlTag    : @"SmtpAddress"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSConnectingSIDType*) val
{   (void) val;
    if ([val principalName] && ![MPSEWSNonEmptyStringType isValid:[val principalName]]) return FALSE;
    if ([val sID ] && ![MPSEWSNonEmptyStringType isValid:[val sID ]]) return FALSE;
    if ([val primarySmtpAddress] && ![MPSEWSNonEmptyStringType isValid:[val primarySmtpAddress]]) return FALSE;
    if ([val smtpAddress] && ![MPSEWSNonEmptyStringType isValid:[val smtpAddress]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSConnectingSIDType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ConnectingSIDType: PrincipalName=%@ SID=%@ PrimarySmtpAddress=%@ SmtpAddress=%@", _principalName, _sID, _primarySmtpAddress, _smtpAddress];
}

@end

