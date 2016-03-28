#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCompleteNameType.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSCompleteNameType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCompleteNameType class]];

    [handler property      : @"title"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Title"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"firstName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FirstName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"middleName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MiddleName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"lastName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"suffix"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Suffix"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"initials"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Initials"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"fullName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FullName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"nickname"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Nickname"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"yomiFirstName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"YomiFirstName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"yomiLastName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"YomiLastName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCompleteNameType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CompleteNameType: Title=%@ FirstName=%@ MiddleName=%@ LastName=%@ Suffix=%@ Initials=%@ FullName=%@ Nickname=%@ YomiFirstName=%@ YomiLastName=%@", _title, _firstName, _middleName, _lastName, _suffix, _initials, _fullName, _nickname, _yomiFirstName, _yomiLastName];
}

@end

