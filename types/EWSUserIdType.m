#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSUserIdType.h"


@implementation EWSUserIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSUserIdType class]];

    [handler property   : @"sID"
             isRequired : FALSE
             withXmlTag : @"SID"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"primarySmtpAddress"
             isRequired : FALSE
             withXmlTag : @"PrimarySmtpAddress"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"displayName"
             isRequired : FALSE
             withXmlTag : @"DisplayName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"distinguishedUser"
             isRequired : FALSE
             withXmlTag : @"DistinguishedUser"
             withHandler: [EWSDistinguishedUserType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSUserIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UserIdType: SID=%@ PrimarySmtpAddress=%@ DisplayName=%@ DistinguishedUser=%@", _sID, _primarySmtpAddress, _displayName, _distinguishedUser];
}

@end

