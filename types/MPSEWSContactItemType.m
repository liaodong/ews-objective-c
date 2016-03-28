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
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MimeContent"
             withHandler   : [MPSEWSMimeContentType class]];

    [handler property      : @"itemId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"parentFolderId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"itemClass"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ItemClass"
             withHandler   : [MPSEWSItemClassType class]];

    [handler property      : @"subject"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Subject"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"sensitivity"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Sensitivity"
             withHandler   : [MPSEWSSensitivityChoicesType class]];

    [handler property      : @"body"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Body"
             withHandler   : [MPSEWSBodyType class]];

    [handler property      : @"attachments"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Attachments"
             withHandler   : [MPSEWSNonEmptyArrayOfAttachmentsType class]];

    [handler property      : @"dateTimeReceived"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeReceived"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"size"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Size"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"categories"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Categories"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"importance"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Importance"
             withHandler   : [MPSEWSImportanceChoicesType class]];

    [handler property      : @"inReplyTo"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InReplyTo"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"isSubmitted"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsSubmitted"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isDraft"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsDraft"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFromMe"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFromMe"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isResend"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsResend"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isUnmodified"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsUnmodified"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"internetMessageHeaders"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InternetMessageHeaders"
             withHandler   : [MPSEWSNonEmptyArrayOfInternetHeadersType class]];

    [handler property      : @"dateTimeSent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeSent"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"dateTimeCreated"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeCreated"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"responseObjects"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ResponseObjects"
             withHandler   : [MPSEWSNonEmptyArrayOfResponseObjectsType class]];

    [handler property      : @"reminderDueBy"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderDueBy"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"reminderIsSet"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderIsSet"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"reminderMinutesBeforeStart"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderMinutesBeforeStart"
             withHandler   : [MPSEWSReminderMinutesBeforeStartType class]];

    [handler property      : @"displayCc"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayCc"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"displayTo"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayTo"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"hasAttachments"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"HasAttachments"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler listProperty  : @"extendedProperty"
             isNonEmpty    : FALSE
             useSelector   : @"addExtendedProperty"
             withNamespace : 't'
             withXmlTag    : @"ExtendedProperty"
             withHandler   : [MPSEWSExtendedPropertyType class]];

    [handler property      : @"culture"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Culture"
             withHandler   : [MPSEWSLanguageTypeHandler class]];

    [handler property      : @"effectiveRights"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EffectiveRights"
             withHandler   : [MPSEWSEffectiveRightsType class]];

    [handler property      : @"lastModifiedName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastModifiedName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"lastModifiedTime"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastModifiedTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"fileAs"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FileAs"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"fileAsMapping"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FileAsMapping"
             withHandler   : [MPSEWSFileAsMappingType class]];

    [handler property      : @"displayName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"givenName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"GivenName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"initials"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Initials"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"middleName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MiddleName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"nickname"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Nickname"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"completeName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CompleteName"
             withHandler   : [MPSEWSCompleteNameType class]];

    [handler property      : @"companyName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CompanyName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"emailAddresses"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EmailAddresses"
             withHandler   : [MPSEWSEmailAddressDictionaryType class]];

    [handler property      : @"physicalAddresses"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PhysicalAddresses"
             withHandler   : [MPSEWSPhysicalAddressDictionaryType class]];

    [handler property      : @"phoneNumbers"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PhoneNumbers"
             withHandler   : [MPSEWSPhoneNumberDictionaryType class]];

    [handler property      : @"assistantName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AssistantName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"birthday"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Birthday"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"businessHomePage"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"BusinessHomePage"
             withHandler   : [MPSEWSAnyUriTypeHandler class]];

    [handler property      : @"children"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Children"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"companies"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Companies"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"contactSource"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContactSource"
             withHandler   : [MPSEWSContactSourceType class]];

    [handler property      : @"department"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Department"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"generation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Generation"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"imAddresses"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ImAddresses"
             withHandler   : [MPSEWSImAddressDictionaryType class]];

    [handler property      : @"jobTitle"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"JobTitle"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"manager"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Manager"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"mileage"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Mileage"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"officeLocation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"OfficeLocation"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"postalAddressIndex"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PostalAddressIndex"
             withHandler   : [MPSEWSPhysicalAddressIndexType class]];

    [handler property      : @"profession"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Profession"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"spouseName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"SpouseName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"surname"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Surname"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"weddingAnniversary"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"WeddingAnniversary"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler register];
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

