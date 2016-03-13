#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSContactItemType.h"


@implementation EWSContactItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSContactItemType class]];

    [handler property   : @"mimeContent"
             isRequired : FALSE
             withXmlTag : @"MimeContent"
             withHandler: [EWSMimeContentType class]];

    [handler property   : @"itemId"
             isRequired : FALSE
             withXmlTag : @"ItemId"
             withHandler: [EWSItemIdType class]];

    [handler property   : @"parentFolderId"
             isRequired : FALSE
             withXmlTag : @"ParentFolderId"
             withHandler: [EWSFolderIdType class]];

    [handler property   : @"itemClass"
             isRequired : FALSE
             withXmlTag : @"ItemClass"
             withHandler: [EWSItemClassType class]];

    [handler property   : @"subject"
             isRequired : FALSE
             withXmlTag : @"Subject"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"sensitivity"
             isRequired : FALSE
             withXmlTag : @"Sensitivity"
             withHandler: [EWSSensitivityChoicesType class]];

    [handler property   : @"body"
             isRequired : FALSE
             withXmlTag : @"Body"
             withHandler: [EWSBodyType class]];

    [handler property   : @"attachments"
             isRequired : FALSE
             withXmlTag : @"Attachments"
             withHandler: [EWSNonEmptyArrayOfAttachmentsType class]];

    [handler property   : @"dateTimeReceived"
             isRequired : FALSE
             withXmlTag : @"DateTimeReceived"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"size"
             isRequired : FALSE
             withXmlTag : @"Size"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"categories"
             isRequired : FALSE
             withXmlTag : @"Categories"
             withHandler: [EWSArrayOfStringsType class]];

    [handler property   : @"importance"
             isRequired : FALSE
             withXmlTag : @"Importance"
             withHandler: [EWSImportanceChoicesType class]];

    [handler property   : @"inReplyTo"
             isRequired : FALSE
             withXmlTag : @"InReplyTo"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"isSubmitted"
             isRequired : FALSE
             withXmlTag : @"IsSubmitted"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isDraft"
             isRequired : FALSE
             withXmlTag : @"IsDraft"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isFromMe"
             isRequired : FALSE
             withXmlTag : @"IsFromMe"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isResend"
             isRequired : FALSE
             withXmlTag : @"IsResend"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"isUnmodified"
             isRequired : FALSE
             withXmlTag : @"IsUnmodified"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"internetMessageHeaders"
             isRequired : FALSE
             withXmlTag : @"InternetMessageHeaders"
             withHandler: [EWSNonEmptyArrayOfInternetHeadersType class]];

    [handler property   : @"dateTimeSent"
             isRequired : FALSE
             withXmlTag : @"DateTimeSent"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"dateTimeCreated"
             isRequired : FALSE
             withXmlTag : @"DateTimeCreated"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"responseObjects"
             isRequired : FALSE
             withXmlTag : @"ResponseObjects"
             withHandler: [EWSNonEmptyArrayOfResponseObjectsType class]];

    [handler property   : @"reminderDueBy"
             isRequired : FALSE
             withXmlTag : @"ReminderDueBy"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"reminderIsSet"
             isRequired : FALSE
             withXmlTag : @"ReminderIsSet"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"reminderMinutesBeforeStart"
             isRequired : FALSE
             withXmlTag : @"ReminderMinutesBeforeStart"
             withHandler: [EWSReminderMinutesBeforeStartType class]];

    [handler property   : @"displayCc"
             isRequired : FALSE
             withXmlTag : @"DisplayCc"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"displayTo"
             isRequired : FALSE
             withXmlTag : @"DisplayTo"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"hasAttachments"
             isRequired : FALSE
             withXmlTag : @"HasAttachments"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler listProperty : @"extendedProperty"
             isNonEmpty   : FALSE
             useSelector  : @"addExtendedProperty"
             withXmlTag   : @"ExtendedProperty"
             withHandler  : [EWSExtendedPropertyType class]];

    [handler property   : @"culture"
             isRequired : FALSE
             withXmlTag : @"Culture"
             withHandler: [EWSLanguageTypeHandler class]];

    [handler property   : @"effectiveRights"
             isRequired : FALSE
             withXmlTag : @"EffectiveRights"
             withHandler: [EWSEffectiveRightsType class]];

    [handler property   : @"lastModifiedName"
             isRequired : FALSE
             withXmlTag : @"LastModifiedName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"lastModifiedTime"
             isRequired : FALSE
             withXmlTag : @"LastModifiedTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"fileAs"
             isRequired : FALSE
             withXmlTag : @"FileAs"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"fileAsMapping"
             isRequired : FALSE
             withXmlTag : @"FileAsMapping"
             withHandler: [EWSFileAsMappingType class]];

    [handler property   : @"displayName"
             isRequired : FALSE
             withXmlTag : @"DisplayName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"givenName"
             isRequired : FALSE
             withXmlTag : @"GivenName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"initials"
             isRequired : FALSE
             withXmlTag : @"Initials"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"middleName"
             isRequired : FALSE
             withXmlTag : @"MiddleName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"nickname"
             isRequired : FALSE
             withXmlTag : @"Nickname"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"completeName"
             isRequired : FALSE
             withXmlTag : @"CompleteName"
             withHandler: [EWSCompleteNameType class]];

    [handler property   : @"companyName"
             isRequired : FALSE
             withXmlTag : @"CompanyName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"emailAddresses"
             isRequired : FALSE
             withXmlTag : @"EmailAddresses"
             withHandler: [EWSEmailAddressDictionaryType class]];

    [handler property   : @"physicalAddresses"
             isRequired : FALSE
             withXmlTag : @"PhysicalAddresses"
             withHandler: [EWSPhysicalAddressDictionaryType class]];

    [handler property   : @"phoneNumbers"
             isRequired : FALSE
             withXmlTag : @"PhoneNumbers"
             withHandler: [EWSPhoneNumberDictionaryType class]];

    [handler property   : @"assistantName"
             isRequired : FALSE
             withXmlTag : @"AssistantName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"birthday"
             isRequired : FALSE
             withXmlTag : @"Birthday"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"businessHomePage"
             isRequired : FALSE
             withXmlTag : @"BusinessHomePage"
             withHandler: [EWSAnyUriTypeHandler class]];

    [handler property   : @"children"
             isRequired : FALSE
             withXmlTag : @"Children"
             withHandler: [EWSArrayOfStringsType class]];

    [handler property   : @"companies"
             isRequired : FALSE
             withXmlTag : @"Companies"
             withHandler: [EWSArrayOfStringsType class]];

    [handler property   : @"contactSource"
             isRequired : FALSE
             withXmlTag : @"ContactSource"
             withHandler: [EWSContactSourceType class]];

    [handler property   : @"department"
             isRequired : FALSE
             withXmlTag : @"Department"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"generation"
             isRequired : FALSE
             withXmlTag : @"Generation"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"imAddresses"
             isRequired : FALSE
             withXmlTag : @"ImAddresses"
             withHandler: [EWSImAddressDictionaryType class]];

    [handler property   : @"jobTitle"
             isRequired : FALSE
             withXmlTag : @"JobTitle"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"manager"
             isRequired : FALSE
             withXmlTag : @"Manager"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"mileage"
             isRequired : FALSE
             withXmlTag : @"Mileage"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"officeLocation"
             isRequired : FALSE
             withXmlTag : @"OfficeLocation"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"postalAddressIndex"
             isRequired : FALSE
             withXmlTag : @"PostalAddressIndex"
             withHandler: [EWSPhysicalAddressIndexType class]];

    [handler property   : @"profession"
             isRequired : FALSE
             withXmlTag : @"Profession"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"spouseName"
             isRequired : FALSE
             withXmlTag : @"SpouseName"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"surname"
             isRequired : FALSE
             withXmlTag : @"Surname"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"weddingAnniversary"
             isRequired : FALSE
             withXmlTag : @"WeddingAnniversary"
             withHandler: [EWSDateTimeTypeHandler class]];

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

