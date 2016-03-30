#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSContactItemType.h"
#import "../handlers/MPSEWSAnyUriTypeHandler.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSLanguageTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSBodyType.h"
#import "../types/MPSEWSCompleteNameType.h"
#import "../types/MPSEWSContactSourceType.h"
#import "../types/MPSEWSEffectiveRightsType.h"
#import "../types/MPSEWSEmailAddressDictionaryType.h"
#import "../types/MPSEWSExtendedPropertyType.h"
#import "../types/MPSEWSFileAsMappingType.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSImAddressDictionaryType.h"
#import "../types/MPSEWSImportanceChoicesType.h"
#import "../types/MPSEWSItemClassType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSMimeContentType.h"
#import "../types/MPSEWSNonEmptyArrayOfAttachmentsType.h"
#import "../types/MPSEWSNonEmptyArrayOfInternetHeadersType.h"
#import "../types/MPSEWSNonEmptyArrayOfResponseObjectsType.h"
#import "../types/MPSEWSPhoneNumberDictionaryType.h"
#import "../types/MPSEWSPhysicalAddressDictionaryType.h"
#import "../types/MPSEWSPhysicalAddressIndexType.h"
#import "../types/MPSEWSReminderMinutesBeforeStartType.h"
#import "../types/MPSEWSSensitivityChoicesType.h"


@implementation MPSEWSContactItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSContactItemType class]];

    [handler property      : @"mimeContent"
             withNamespace : 't'
             withXmlTag    : @"MimeContent"
             withHandler   : [MPSEWSMimeContentType class]];

    [handler property      : @"itemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"parentFolderId"
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"itemClass"
             withNamespace : 't'
             withXmlTag    : @"ItemClass"
             withHandler   : [MPSEWSItemClassType class]];

    [handler property      : @"subject"
             withNamespace : 't'
             withXmlTag    : @"Subject"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"sensitivity"
             withNamespace : 't'
             withXmlTag    : @"Sensitivity"
             withHandler   : [MPSEWSSensitivityChoicesType class]];

    [handler property      : @"body"
             withNamespace : 't'
             withXmlTag    : @"Body"
             withHandler   : [MPSEWSBodyType class]];

    [handler property      : @"attachments"
             withNamespace : 't'
             withXmlTag    : @"Attachments"
             withHandler   : [MPSEWSNonEmptyArrayOfAttachmentsType class]];

    [handler property      : @"dateTimeReceived"
             withNamespace : 't'
             withXmlTag    : @"DateTimeReceived"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"size"
             withNamespace : 't'
             withXmlTag    : @"Size"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"categories"
             withNamespace : 't'
             withXmlTag    : @"Categories"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"importance"
             withNamespace : 't'
             withXmlTag    : @"Importance"
             withHandler   : [MPSEWSImportanceChoicesType class]];

    [handler property      : @"inReplyTo"
             withNamespace : 't'
             withXmlTag    : @"InReplyTo"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"isSubmitted"
             withNamespace : 't'
             withXmlTag    : @"IsSubmitted"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isDraft"
             withNamespace : 't'
             withXmlTag    : @"IsDraft"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFromMe"
             withNamespace : 't'
             withXmlTag    : @"IsFromMe"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isResend"
             withNamespace : 't'
             withXmlTag    : @"IsResend"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isUnmodified"
             withNamespace : 't'
             withXmlTag    : @"IsUnmodified"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"internetMessageHeaders"
             withNamespace : 't'
             withXmlTag    : @"InternetMessageHeaders"
             withHandler   : [MPSEWSNonEmptyArrayOfInternetHeadersType class]];

    [handler property      : @"dateTimeSent"
             withNamespace : 't'
             withXmlTag    : @"DateTimeSent"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"dateTimeCreated"
             withNamespace : 't'
             withXmlTag    : @"DateTimeCreated"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"responseObjects"
             withNamespace : 't'
             withXmlTag    : @"ResponseObjects"
             withHandler   : [MPSEWSNonEmptyArrayOfResponseObjectsType class]];

    [handler property      : @"reminderDueBy"
             withNamespace : 't'
             withXmlTag    : @"ReminderDueBy"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"reminderIsSet"
             withNamespace : 't'
             withXmlTag    : @"ReminderIsSet"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"reminderMinutesBeforeStart"
             withNamespace : 't'
             withXmlTag    : @"ReminderMinutesBeforeStart"
             withHandler   : [MPSEWSReminderMinutesBeforeStartType class]];

    [handler property      : @"displayCc"
             withNamespace : 't'
             withXmlTag    : @"DisplayCc"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"displayTo"
             withNamespace : 't'
             withXmlTag    : @"DisplayTo"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"hasAttachments"
             withNamespace : 't'
             withXmlTag    : @"HasAttachments"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler listProperty  : @"extendedProperty"
             useSelector   : @"addExtendedProperty"
             withNamespace : 't'
             withXmlTag    : @"ExtendedProperty"
             withHandler   : [MPSEWSExtendedPropertyType class]];

    [handler property      : @"culture"
             withNamespace : 't'
             withXmlTag    : @"Culture"
             withHandler   : [MPSEWSLanguageTypeHandler class]];

    [handler property      : @"effectiveRights"
             withNamespace : 't'
             withXmlTag    : @"EffectiveRights"
             withHandler   : [MPSEWSEffectiveRightsType class]];

    [handler property      : @"lastModifiedName"
             withNamespace : 't'
             withXmlTag    : @"LastModifiedName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"lastModifiedTime"
             withNamespace : 't'
             withXmlTag    : @"LastModifiedTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"fileAs"
             withNamespace : 't'
             withXmlTag    : @"FileAs"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"fileAsMapping"
             withNamespace : 't'
             withXmlTag    : @"FileAsMapping"
             withHandler   : [MPSEWSFileAsMappingType class]];

    [handler property      : @"displayName"
             withNamespace : 't'
             withXmlTag    : @"DisplayName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"givenName"
             withNamespace : 't'
             withXmlTag    : @"GivenName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"initials"
             withNamespace : 't'
             withXmlTag    : @"Initials"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"middleName"
             withNamespace : 't'
             withXmlTag    : @"MiddleName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"nickname"
             withNamespace : 't'
             withXmlTag    : @"Nickname"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"completeName"
             withNamespace : 't'
             withXmlTag    : @"CompleteName"
             withHandler   : [MPSEWSCompleteNameType class]];

    [handler property      : @"companyName"
             withNamespace : 't'
             withXmlTag    : @"CompanyName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"emailAddresses"
             withNamespace : 't'
             withXmlTag    : @"EmailAddresses"
             withHandler   : [MPSEWSEmailAddressDictionaryType class]];

    [handler property      : @"physicalAddresses"
             withNamespace : 't'
             withXmlTag    : @"PhysicalAddresses"
             withHandler   : [MPSEWSPhysicalAddressDictionaryType class]];

    [handler property      : @"phoneNumbers"
             withNamespace : 't'
             withXmlTag    : @"PhoneNumbers"
             withHandler   : [MPSEWSPhoneNumberDictionaryType class]];

    [handler property      : @"assistantName"
             withNamespace : 't'
             withXmlTag    : @"AssistantName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"birthday"
             withNamespace : 't'
             withXmlTag    : @"Birthday"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"businessHomePage"
             withNamespace : 't'
             withXmlTag    : @"BusinessHomePage"
             withHandler   : [MPSEWSAnyUriTypeHandler class]];

    [handler property      : @"children"
             withNamespace : 't'
             withXmlTag    : @"Children"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"companies"
             withNamespace : 't'
             withXmlTag    : @"Companies"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"contactSource"
             withNamespace : 't'
             withXmlTag    : @"ContactSource"
             withHandler   : [MPSEWSContactSourceType class]];

    [handler property      : @"department"
             withNamespace : 't'
             withXmlTag    : @"Department"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"generation"
             withNamespace : 't'
             withXmlTag    : @"Generation"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"imAddresses"
             withNamespace : 't'
             withXmlTag    : @"ImAddresses"
             withHandler   : [MPSEWSImAddressDictionaryType class]];

    [handler property      : @"jobTitle"
             withNamespace : 't'
             withXmlTag    : @"JobTitle"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"manager"
             withNamespace : 't'
             withXmlTag    : @"Manager"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"mileage"
             withNamespace : 't'
             withXmlTag    : @"Mileage"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"officeLocation"
             withNamespace : 't'
             withXmlTag    : @"OfficeLocation"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"postalAddressIndex"
             withNamespace : 't'
             withXmlTag    : @"PostalAddressIndex"
             withHandler   : [MPSEWSPhysicalAddressIndexType class]];

    [handler property      : @"profession"
             withNamespace : 't'
             withXmlTag    : @"Profession"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"spouseName"
             withNamespace : 't'
             withXmlTag    : @"SpouseName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"surname"
             withNamespace : 't'
             withXmlTag    : @"Surname"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"weddingAnniversary"
             withNamespace : 't'
             withXmlTag    : @"WeddingAnniversary"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSContactItemType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSContactItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ContactItemType: FileAs=%@ FileAsMapping=%@ DisplayName=%@ GivenName=%@ Initials=%@ MiddleName=%@ Nickname=%@ CompleteName=%@ CompanyName=%@ EmailAddresses=%@ PhysicalAddresses=%@ PhoneNumbers=%@ AssistantName=%@ Birthday=%@ BusinessHomePage=%@ Children=%@ Companies=%@ ContactSource=%@ Department=%@ Generation=%@ ImAddresses=%@ JobTitle=%@ Manager=%@ Mileage=%@ OfficeLocation=%@ PostalAddressIndex=%@ Profession=%@ SpouseName=%@ Surname=%@ WeddingAnniversary=%@ super=%@", _fileAs, _fileAsMapping, _displayName, _givenName, _initials, _middleName, _nickname, _completeName, _companyName, _emailAddresses, _physicalAddresses, _phoneNumbers, _assistantName, _birthday, _businessHomePage, _children, _companies, _contactSource, _department, _generation, _imAddresses, _jobTitle, _manager, _mileage, _officeLocation, _postalAddressIndex, _profession, _spouseName, _surname, _weddingAnniversary, [super description]];
}

@end

