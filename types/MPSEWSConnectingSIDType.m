#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSConnectingSIDType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSConnectingSIDType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSConnectingSIDType class]];

    [handler property      : @"principalName"
             withNamespace : 't'
             withXmlTag    : @"PrincipalName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"sID"
             withNamespace : 't'
             withXmlTag    : @"SID"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"primarySmtpAddress"
             withNamespace : 't'
             withXmlTag    : @"PrimarySmtpAddress"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSConnectingSIDType*) val
{   (void) val;
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
    return [NSString stringWithFormat:@"ConnectingSIDType: PrincipalName=%@ SID=%@ PrimarySmtpAddress=%@", _principalName, _sID, _primarySmtpAddress];
}

@end

