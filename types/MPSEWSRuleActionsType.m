#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRuleActionsType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSArrayOfEmailAddressesType.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSImportanceChoicesType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSRuleActionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRuleActionsType class]];

    [handler property      : @"assignCategories"
             withNamespace : 't'
             withXmlTag    : @"AssignCategories"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"pCopyToFolder"
             withNamespace : 't'
             withXmlTag    : @"CopyToFolder"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"delete"
             withNamespace : 't'
             withXmlTag    : @"Delete"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"forwardAsAttachmentToRecipients"
             withNamespace : 't'
             withXmlTag    : @"ForwardAsAttachmentToRecipients"
             withHandler   : [MPSEWSArrayOfEmailAddressesType class]];

    [handler property      : @"forwardToRecipients"
             withNamespace : 't'
             withXmlTag    : @"ForwardToRecipients"
             withHandler   : [MPSEWSArrayOfEmailAddressesType class]];

    [handler property      : @"markImportance"
             withNamespace : 't'
             withXmlTag    : @"MarkImportance"
             withHandler   : [MPSEWSImportanceChoicesType class]];

    [handler property      : @"markAsRead"
             withNamespace : 't'
             withXmlTag    : @"MarkAsRead"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"moveToFolder"
             withNamespace : 't'
             withXmlTag    : @"MoveToFolder"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"permanentDelete"
             withNamespace : 't'
             withXmlTag    : @"PermanentDelete"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"redirectToRecipients"
             withNamespace : 't'
             withXmlTag    : @"RedirectToRecipients"
             withHandler   : [MPSEWSArrayOfEmailAddressesType class]];

    [handler property      : @"sendSMSAlertToRecipients"
             withNamespace : 't'
             withXmlTag    : @"SendSMSAlertToRecipients"
             withHandler   : [MPSEWSArrayOfEmailAddressesType class]];

    [handler property      : @"serverReplyWithMessage"
             withNamespace : 't'
             withXmlTag    : @"ServerReplyWithMessage"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"stopProcessingRules"
             withNamespace : 't'
             withXmlTag    : @"StopProcessingRules"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRuleActionsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val assignCategories] && ![MPSEWSArrayOfStringsType isValid:[val assignCategories] forVersion:ver]) return FALSE;
    if ([val pCopyToFolder] && ![MPSEWSTargetFolderIdType isValid:[val pCopyToFolder] forVersion:ver]) return FALSE;
    if ([val delete] && ![MPSEWSBooleanTypeHandler isValid:[val delete] forVersion:ver]) return FALSE;
    if ([val forwardAsAttachmentToRecipients] && ![MPSEWSArrayOfEmailAddressesType isValid:[val forwardAsAttachmentToRecipients] forVersion:ver]) return FALSE;
    if ([val forwardToRecipients] && ![MPSEWSArrayOfEmailAddressesType isValid:[val forwardToRecipients] forVersion:ver]) return FALSE;
    if ([val markImportance] && ![MPSEWSImportanceChoicesType isValid:[val markImportance] forVersion:ver]) return FALSE;
    if ([val markAsRead] && ![MPSEWSBooleanTypeHandler isValid:[val markAsRead] forVersion:ver]) return FALSE;
    if ([val moveToFolder] && ![MPSEWSTargetFolderIdType isValid:[val moveToFolder] forVersion:ver]) return FALSE;
    if ([val permanentDelete] && ![MPSEWSBooleanTypeHandler isValid:[val permanentDelete] forVersion:ver]) return FALSE;
    if ([val redirectToRecipients] && ![MPSEWSArrayOfEmailAddressesType isValid:[val redirectToRecipients] forVersion:ver]) return FALSE;
    if ([val sendSMSAlertToRecipients] && ![MPSEWSArrayOfEmailAddressesType isValid:[val sendSMSAlertToRecipients] forVersion:ver]) return FALSE;
    if ([val serverReplyWithMessage] && ![MPSEWSItemIdType isValid:[val serverReplyWithMessage] forVersion:ver]) return FALSE;
    if ([val stopProcessingRules] && ![MPSEWSBooleanTypeHandler isValid:[val stopProcessingRules] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRuleActionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RuleActionsType: AssignCategories=%@ CopyToFolder=%@ Delete=%@ ForwardAsAttachmentToRecipients=%@ ForwardToRecipients=%@ MarkImportance=%@ MarkAsRead=%@ MoveToFolder=%@ PermanentDelete=%@ RedirectToRecipients=%@ SendSMSAlertToRecipients=%@ ServerReplyWithMessage=%@ StopProcessingRules=%@", _assignCategories, _pCopyToFolder, _delete, _forwardAsAttachmentToRecipients, _forwardToRecipients, _markImportance, _markAsRead, _moveToFolder, _permanentDelete, _redirectToRecipients, _sendSMSAlertToRecipients, _serverReplyWithMessage, _stopProcessingRules];
}

@end

