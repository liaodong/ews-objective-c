#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSContactItemType.h"
#import "../handlers/MPSEWSAnyUriTypeHandler.h"
#import "../handlers/MPSEWSBase64BinaryTypeHandler.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSLanguageTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfBinaryType.h"
#import "../types/MPSEWSArrayOfRecipientsType.h"
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
#import "../types/MPSEWSSingleRecipientType.h"


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

    [handler property      : @"isAssociated"
             withNamespace : 't'
             withXmlTag    : @"IsAssociated"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"webClientReadFormQueryString"
             withNamespace : 't'
             withXmlTag    : @"WebClientReadFormQueryString"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"webClientEditFormQueryString"
             withNamespace : 't'
             withXmlTag    : @"WebClientEditFormQueryString"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"conversationId"
             withNamespace : 't'
             withXmlTag    : @"ConversationId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"uniqueBody"
             withNamespace : 't'
             withXmlTag    : @"UniqueBody"
             withHandler   : [MPSEWSBodyType class]];

    [handler property      : @"storeEntryId"
             withNamespace : 't'
             withXmlTag    : @"StoreEntryId"
             withHandler   : [MPSEWSBase64BinaryTypeHandler class]];

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

    [handler property      : @"hasPicture"
             withNamespace : 't'
             withXmlTag    : @"HasPicture"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"phoneticFullName"
             withNamespace : 't'
             withXmlTag    : @"PhoneticFullName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"phoneticFirstName"
             withNamespace : 't'
             withXmlTag    : @"PhoneticFirstName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"phoneticLastName"
             withNamespace : 't'
             withXmlTag    : @"PhoneticLastName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"alias"
             withNamespace : 't'
             withXmlTag    : @"Alias"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"notes"
             withNamespace : 't'
             withXmlTag    : @"Notes"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"photo"
             withNamespace : 't'
             withXmlTag    : @"Photo"
             withHandler   : [MPSEWSBase64BinaryTypeHandler class]];

    [handler property      : @"userSMIMECertificate"
             withNamespace : 't'
             withXmlTag    : @"UserSMIMECertificate"
             withHandler   : [MPSEWSArrayOfBinaryType class]];

    [handler property      : @"mSExchangeCertificate"
             withNamespace : 't'
             withXmlTag    : @"MSExchangeCertificate"
             withHandler   : [MPSEWSArrayOfBinaryType class]];

    [handler property      : @"directoryId"
             withNamespace : 't'
             withXmlTag    : @"DirectoryId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"managerMailbox"
             withNamespace : 't'
             withXmlTag    : @"ManagerMailbox"
             withHandler   : [MPSEWSSingleRecipientType class]];

    [handler property      : @"directReports"
             withNamespace : 't'
             withXmlTag    : @"DirectReports"
             withHandler   : [MPSEWSArrayOfRecipientsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSContactItemType*) val
{   (void) val;
    if (![MPSEWSItemType isValid:val]) return FALSE;
    if ([val fileAs] && ![MPSEWSStringTypeHandler isValid:[val fileAs]]) return FALSE;
    if ([val fileAsMapping] && ![MPSEWSFileAsMappingType isValid:[val fileAsMapping]]) return FALSE;
    if ([val displayName] && ![MPSEWSStringTypeHandler isValid:[val displayName]]) return FALSE;
    if ([val givenName] && ![MPSEWSStringTypeHandler isValid:[val givenName]]) return FALSE;
    if ([val initials] && ![MPSEWSStringTypeHandler isValid:[val initials]]) return FALSE;
    if ([val middleName] && ![MPSEWSStringTypeHandler isValid:[val middleName]]) return FALSE;
    if ([val nickname] && ![MPSEWSStringTypeHandler isValid:[val nickname]]) return FALSE;
    if ([val completeName] && ![MPSEWSCompleteNameType isValid:[val completeName]]) return FALSE;
    if ([val companyName] && ![MPSEWSStringTypeHandler isValid:[val companyName]]) return FALSE;
    if ([val emailAddresses] && ![MPSEWSEmailAddressDictionaryType isValid:[val emailAddresses]]) return FALSE;
    if ([val physicalAddresses] && ![MPSEWSPhysicalAddressDictionaryType isValid:[val physicalAddresses]]) return FALSE;
    if ([val phoneNumbers] && ![MPSEWSPhoneNumberDictionaryType isValid:[val phoneNumbers]]) return FALSE;
    if ([val assistantName] && ![MPSEWSStringTypeHandler isValid:[val assistantName]]) return FALSE;
    if ([val birthday] && ![MPSEWSDateTimeTypeHandler isValid:[val birthday]]) return FALSE;
    if ([val businessHomePage] && ![MPSEWSAnyUriTypeHandler isValid:[val businessHomePage]]) return FALSE;
    if ([val children] && ![MPSEWSArrayOfStringsType isValid:[val children]]) return FALSE;
    if ([val companies] && ![MPSEWSArrayOfStringsType isValid:[val companies]]) return FALSE;
    if ([val contactSource] && ![MPSEWSContactSourceType isValid:[val contactSource]]) return FALSE;
    if ([val department] && ![MPSEWSStringTypeHandler isValid:[val department]]) return FALSE;
    if ([val generation] && ![MPSEWSStringTypeHandler isValid:[val generation]]) return FALSE;
    if ([val imAddresses] && ![MPSEWSImAddressDictionaryType isValid:[val imAddresses]]) return FALSE;
    if ([val jobTitle] && ![MPSEWSStringTypeHandler isValid:[val jobTitle]]) return FALSE;
    if ([val manager] && ![MPSEWSStringTypeHandler isValid:[val manager]]) return FALSE;
    if ([val mileage] && ![MPSEWSStringTypeHandler isValid:[val mileage]]) return FALSE;
    if ([val officeLocation] && ![MPSEWSStringTypeHandler isValid:[val officeLocation]]) return FALSE;
    if ([val postalAddressIndex] && ![MPSEWSPhysicalAddressIndexType isValid:[val postalAddressIndex]]) return FALSE;
    if ([val profession] && ![MPSEWSStringTypeHandler isValid:[val profession]]) return FALSE;
    if ([val spouseName] && ![MPSEWSStringTypeHandler isValid:[val spouseName]]) return FALSE;
    if ([val surname] && ![MPSEWSStringTypeHandler isValid:[val surname]]) return FALSE;
    if ([val weddingAnniversary] && ![MPSEWSDateTimeTypeHandler isValid:[val weddingAnniversary]]) return FALSE;
    if ([val hasPicture] && ![MPSEWSBooleanTypeHandler isValid:[val hasPicture]]) return FALSE;
    if ([val phoneticFullName] && ![MPSEWSStringTypeHandler isValid:[val phoneticFullName]]) return FALSE;
    if ([val phoneticFirstName] && ![MPSEWSStringTypeHandler isValid:[val phoneticFirstName]]) return FALSE;
    if ([val phoneticLastName] && ![MPSEWSStringTypeHandler isValid:[val phoneticLastName]]) return FALSE;
    if ([val alias] && ![MPSEWSStringTypeHandler isValid:[val alias]]) return FALSE;
    if ([val notes] && ![MPSEWSStringTypeHandler isValid:[val notes]]) return FALSE;
    if ([val photo] && ![MPSEWSBase64BinaryTypeHandler isValid:[val photo]]) return FALSE;
    if ([val userSMIMECertificate] && ![MPSEWSArrayOfBinaryType isValid:[val userSMIMECertificate]]) return FALSE;
    if ([val mSExchangeCertificate] && ![MPSEWSArrayOfBinaryType isValid:[val mSExchangeCertificate]]) return FALSE;
    if ([val directoryId] && ![MPSEWSStringTypeHandler isValid:[val directoryId]]) return FALSE;
    if ([val managerMailbox] && ![MPSEWSSingleRecipientType isValid:[val managerMailbox]]) return FALSE;
    if ([val directReports] && ![MPSEWSArrayOfRecipientsType isValid:[val directReports]]) return FALSE;
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
    return [NSString stringWithFormat:@"ContactItemType: FileAs=%@ FileAsMapping=%@ DisplayName=%@ GivenName=%@ Initials=%@ MiddleName=%@ Nickname=%@ CompleteName=%@ CompanyName=%@ EmailAddresses=%@ PhysicalAddresses=%@ PhoneNumbers=%@ AssistantName=%@ Birthday=%@ BusinessHomePage=%@ Children=%@ Companies=%@ ContactSource=%@ Department=%@ Generation=%@ ImAddresses=%@ JobTitle=%@ Manager=%@ Mileage=%@ OfficeLocation=%@ PostalAddressIndex=%@ Profession=%@ SpouseName=%@ Surname=%@ WeddingAnniversary=%@ HasPicture=%@ PhoneticFullName=%@ PhoneticFirstName=%@ PhoneticLastName=%@ Alias=%@ Notes=%@ Photo=%@ UserSMIMECertificate=%@ MSExchangeCertificate=%@ DirectoryId=%@ ManagerMailbox=%@ DirectReports=%@ super=%@", _fileAs, _fileAsMapping, _displayName, _givenName, _initials, _middleName, _nickname, _completeName, _companyName, _emailAddresses, _physicalAddresses, _phoneNumbers, _assistantName, _birthday, _businessHomePage, _children, _companies, _contactSource, _department, _generation, _imAddresses, _jobTitle, _manager, _mileage, _officeLocation, _postalAddressIndex, _profession, _spouseName, _surname, _weddingAnniversary, _hasPicture, _phoneticFullName, _phoneticFirstName, _phoneticLastName, _alias, _notes, _photo, _userSMIMECertificate, _mSExchangeCertificate, _directoryId, _managerMailbox, _directReports, [super description]];
}

@end

