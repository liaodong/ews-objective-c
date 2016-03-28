#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCompleteNameType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSCompleteNameType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCompleteNameType class]];

    [handler property      : @"title"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Title"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"firstName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FirstName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"middleName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MiddleName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"lastName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"suffix"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Suffix"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"initials"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Initials"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"fullName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FullName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"nickname"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Nickname"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"yomiFirstName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"YomiFirstName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"yomiLastName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"YomiLastName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCompleteNameType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CompleteNameType: Title=%@ FirstName=%@ MiddleName=%@ LastName=%@ Suffix=%@ Initials=%@ FullName=%@ Nickname=%@ YomiFirstName=%@ YomiLastName=%@", _title, _firstName, _middleName, _lastName, _suffix, _initials, _fullName, _nickname, _yomiFirstName, _yomiLastName];
}

@end

