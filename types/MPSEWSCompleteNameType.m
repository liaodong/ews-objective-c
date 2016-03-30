#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCompleteNameType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSCompleteNameType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCompleteNameType class]];

    [handler property      : @"title"
             withNamespace : 't'
             withXmlTag    : @"Title"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"firstName"
             withNamespace : 't'
             withXmlTag    : @"FirstName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"middleName"
             withNamespace : 't'
             withXmlTag    : @"MiddleName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"lastName"
             withNamespace : 't'
             withXmlTag    : @"LastName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"suffix"
             withNamespace : 't'
             withXmlTag    : @"Suffix"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"initials"
             withNamespace : 't'
             withXmlTag    : @"Initials"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"fullName"
             withNamespace : 't'
             withXmlTag    : @"FullName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"nickname"
             withNamespace : 't'
             withXmlTag    : @"Nickname"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"yomiFirstName"
             withNamespace : 't'
             withXmlTag    : @"YomiFirstName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"yomiLastName"
             withNamespace : 't'
             withXmlTag    : @"YomiLastName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCompleteNameType*) val
{   (void) val;
    if ([val title] && ![MPSEWSStringTypeHandler isValid:[val title]]) return FALSE;
    if ([val firstName] && ![MPSEWSStringTypeHandler isValid:[val firstName]]) return FALSE;
    if ([val middleName] && ![MPSEWSStringTypeHandler isValid:[val middleName]]) return FALSE;
    if ([val lastName] && ![MPSEWSStringTypeHandler isValid:[val lastName]]) return FALSE;
    if ([val suffix] && ![MPSEWSStringTypeHandler isValid:[val suffix]]) return FALSE;
    if ([val initials] && ![MPSEWSStringTypeHandler isValid:[val initials]]) return FALSE;
    if ([val fullName] && ![MPSEWSStringTypeHandler isValid:[val fullName]]) return FALSE;
    if ([val nickname] && ![MPSEWSStringTypeHandler isValid:[val nickname]]) return FALSE;
    if ([val yomiFirstName] && ![MPSEWSStringTypeHandler isValid:[val yomiFirstName]]) return FALSE;
    if ([val yomiLastName] && ![MPSEWSStringTypeHandler isValid:[val yomiLastName]]) return FALSE;
    return TRUE;
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

