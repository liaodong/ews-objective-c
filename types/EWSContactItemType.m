#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSContactItemType.h"
#import "../handlers/EWSAnyUriTypeHandler.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSLanguageTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSArrayOfStringsType.h"
#import "../types/EWSBodyType.h"
#import "../types/EWSCompleteNameType.h"
#import "../types/EWSContactSourceType.h"
#import "../types/EWSEffectiveRightsType.h"
#import "../types/EWSEmailAddressDictionaryType.h"
#import "../types/EWSExtendedPropertyType.h"
#import "../types/EWSFileAsMappingType.h"
#import "../types/EWSFolderIdType.h"
#import "../types/EWSImAddressDictionaryType.h"
#import "../types/EWSImportanceChoicesType.h"
#import "../types/EWSItemClassType.h"
#import "../types/EWSItemIdType.h"
#import "../types/EWSMimeContentType.h"
#import "../types/EWSNonEmptyArrayOfAttachmentsType.h"
#import "../types/EWSNonEmptyArrayOfInternetHeadersType.h"
#import "../types/EWSNonEmptyArrayOfResponseObjectsType.h"
#import "../types/EWSPhoneNumberDictionaryType.h"
#import "../types/EWSPhysicalAddressDictionaryType.h"
#import "../types/EWSPhysicalAddressIndexType.h"
#import "../types/EWSReminderMinutesBeforeStartType.h"
#import "../types/EWSSensitivityChoicesType.h"


@implementation EWSContactItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSContactItemType class]];

    [handler property      : @"mimeContent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MimeContent"
             withHandler   : [EWSMimeContentType class]];

    [handler property      : @"itemId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [EWSItemIdType class]];

    [handler property      : @"parentFolderId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [EWSFolderIdType class]];

    [handler property      : @"itemClass"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ItemClass"
             withHandler   : [EWSItemClassType class]];

    [handler property      : @"subject"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Subject"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"sensitivity"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Sensitivity"
             withHandler   : [EWSSensitivityChoicesType class]];

    [handler property      : @"body"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Body"
             withHandler   : [EWSBodyType class]];

    [handler property      : @"attachments"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Attachments"
             withHandler   : [EWSNonEmptyArrayOfAttachmentsType class]];

    [handler property      : @"dateTimeReceived"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeReceived"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"size"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Size"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"categories"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Categories"
             withHandler   : [EWSArrayOfStringsType class]];

    [handler property      : @"importance"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Importance"
             withHandler   : [EWSImportanceChoicesType class]];

    [handler property      : @"inReplyTo"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InReplyTo"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"isSubmitted"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsSubmitted"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isDraft"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsDraft"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isFromMe"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFromMe"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isResend"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsResend"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"isUnmodified"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsUnmodified"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"internetMessageHeaders"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InternetMessageHeaders"
             withHandler   : [EWSNonEmptyArrayOfInternetHeadersType class]];

    [handler property      : @"dateTimeSent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeSent"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"dateTimeCreated"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DateTimeCreated"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"responseObjects"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ResponseObjects"
             withHandler   : [EWSNonEmptyArrayOfResponseObjectsType class]];

    [handler property      : @"reminderDueBy"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderDueBy"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"reminderIsSet"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderIsSet"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"reminderMinutesBeforeStart"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReminderMinutesBeforeStart"
             withHandler   : [EWSReminderMinutesBeforeStartType class]];

    [handler property      : @"displayCc"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayCc"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"displayTo"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayTo"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"hasAttachments"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"HasAttachments"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler listProperty  : @"extendedProperty"
             isNonEmpty    : FALSE
             useSelector   : @"addExtendedProperty"
             withNamespace : 't'
             withXmlTag    : @"ExtendedProperty"
             withHandler   : [EWSExtendedPropertyType class]];

    [handler property      : @"culture"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Culture"
             withHandler   : [EWSLanguageTypeHandler class]];

    [handler property      : @"effectiveRights"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EffectiveRights"
             withHandler   : [EWSEffectiveRightsType class]];

    [handler property      : @"lastModifiedName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastModifiedName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"lastModifiedTime"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastModifiedTime"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"fileAs"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FileAs"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"fileAsMapping"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"FileAsMapping"
             withHandler   : [EWSFileAsMappingType class]];

    [handler property      : @"displayName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DisplayName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"givenName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"GivenName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"initials"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Initials"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"middleName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MiddleName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"nickname"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Nickname"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"completeName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CompleteName"
             withHandler   : [EWSCompleteNameType class]];

    [handler property      : @"companyName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CompanyName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"emailAddresses"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EmailAddresses"
             withHandler   : [EWSEmailAddressDictionaryType class]];

    [handler property      : @"physicalAddresses"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PhysicalAddresses"
             withHandler   : [EWSPhysicalAddressDictionaryType class]];

    [handler property      : @"phoneNumbers"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PhoneNumbers"
             withHandler   : [EWSPhoneNumberDictionaryType class]];

    [handler property      : @"assistantName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AssistantName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"birthday"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Birthday"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"businessHomePage"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"BusinessHomePage"
             withHandler   : [EWSAnyUriTypeHandler class]];

    [handler property      : @"children"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Children"
             withHandler   : [EWSArrayOfStringsType class]];

    [handler property      : @"companies"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Companies"
             withHandler   : [EWSArrayOfStringsType class]];

    [handler property      : @"contactSource"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContactSource"
             withHandler   : [EWSContactSourceType class]];

    [handler property      : @"department"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Department"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"generation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Generation"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"imAddresses"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ImAddresses"
             withHandler   : [EWSImAddressDictionaryType class]];

    [handler property      : @"jobTitle"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"JobTitle"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"manager"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Manager"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"mileage"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Mileage"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"officeLocation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"OfficeLocation"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"postalAddressIndex"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PostalAddressIndex"
             withHandler   : [EWSPhysicalAddressIndexType class]];

    [handler property      : @"profession"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Profession"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"spouseName"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"SpouseName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"surname"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Surname"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"weddingAnniversary"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"WeddingAnniversary"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSContactItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ContactItemType: FileAs=%@ FileAsMapping=%@ DisplayName=%@ GivenName=%@ Initials=%@ MiddleName=%@ Nickname=%@ CompleteName=%@ CompanyName=%@ EmailAddresses=%@ PhysicalAddresses=%@ PhoneNumbers=%@ AssistantName=%@ Birthday=%@ BusinessHomePage=%@ Children=%@ Companies=%@ ContactSource=%@ Department=%@ Generation=%@ ImAddresses=%@ JobTitle=%@ Manager=%@ Mileage=%@ OfficeLocation=%@ PostalAddressIndex=%@ Profession=%@ SpouseName=%@ Surname=%@ WeddingAnniversary=%@ super=%@", _fileAs, _fileAsMapping, _displayName, _givenName, _initials, _middleName, _nickname, _completeName, _companyName, _emailAddresses, _physicalAddresses, _phoneNumbers, _assistantName, _birthday, _businessHomePage, _children, _companies, _contactSource, _department, _generation, _imAddresses, _jobTitle, _manager, _mileage, _officeLocation, _postalAddressIndex, _profession, _spouseName, _surname, _weddingAnniversary, [super description]];
}

@end

