#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUpdateInboxRulesRequestType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfRuleOperationsType.h"


@implementation MPSEWSUpdateInboxRulesRequestType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUpdateInboxRulesRequestType class]];

    [handler property      : @"mailboxSmtpAddress"
             withNamespace : 'm'
             withXmlTag    : @"MailboxSmtpAddress"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"removeOutlookRuleBlob"
             withNamespace : 'm'
             withXmlTag    : @"RemoveOutlookRuleBlob"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"operations"
             withNamespace : 'm'
             withXmlTag    : @"Operations"
             withHandler   : [MPSEWSArrayOfRuleOperationsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUpdateInboxRulesRequestType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val mailboxSmtpAddress] && ![MPSEWSStringTypeHandler isValid:[val mailboxSmtpAddress]]) return FALSE;
    if ([val removeOutlookRuleBlob] && ![MPSEWSBooleanTypeHandler isValid:[val removeOutlookRuleBlob]]) return FALSE;
    if ([val operations] && ![MPSEWSArrayOfRuleOperationsType isValid:[val operations]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUpdateInboxRulesRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UpdateInboxRulesRequestType: MailboxSmtpAddress=%@ RemoveOutlookRuleBlob=%@ Operations=%@ super=%@", _mailboxSmtpAddress, _removeOutlookRuleBlob, _operations, [super description]];
}

@end

