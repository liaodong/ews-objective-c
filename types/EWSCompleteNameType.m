#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSCompleteNameType.h"


@implementation EWSCompleteNameType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCompleteNameType class]];

    [handler property   : @"title"
             isRequired : FALSE
             withXmlTag : @"Title"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"firstName"
             isRequired : FALSE
             withXmlTag : @"FirstName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"middleName"
             isRequired : FALSE
             withXmlTag : @"MiddleName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"lastName"
             isRequired : FALSE
             withXmlTag : @"LastName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"suffix"
             isRequired : FALSE
             withXmlTag : @"Suffix"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"initials"
             isRequired : FALSE
             withXmlTag : @"Initials"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"fullName"
             isRequired : FALSE
             withXmlTag : @"FullName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"nickname"
             isRequired : FALSE
             withXmlTag : @"Nickname"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"yomiFirstName"
             isRequired : FALSE
             withXmlTag : @"YomiFirstName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"yomiLastName"
             isRequired : FALSE
             withXmlTag : @"YomiLastName"
             withHandler: [EWSStringTypeHandler class]];

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

