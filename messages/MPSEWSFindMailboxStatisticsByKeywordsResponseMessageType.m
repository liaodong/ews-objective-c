#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../handlers/MPSEWSXmlContentTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSMailboxStatisticsSearchResultType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType class]];

    [handler property    : @"responseClass"
             withAttrTag : @"ResponseClass"
             withHandler : [MPSEWSResponseClassType class]];

    [handler property      : @"messageText"
             withNamespace : 'm'
             withXmlTag    : @"MessageText"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"responseCode"
             withNamespace : 'm'
             withXmlTag    : @"ResponseCode"
             withHandler   : [MPSEWSResponseCodeType class]];

    [handler property      : @"descriptiveLinkKey"
             withNamespace : 'm'
             withXmlTag    : @"DescriptiveLinkKey"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"messageXml"
             withNamespace : 'm'
             withXmlTag    : @"MessageXml"
             withHandler   : [MPSEWSXmlContentTypeHandler class]];

    [handler property      : @"mailboxStatisticsSearchResult"
             withNamespace : 'm'
             withXmlTag    : @"MailboxStatisticsSearchResult"
             withHandler   : [MPSEWSMailboxStatisticsSearchResultType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val forVersion:ver]) return FALSE;
    if ([val mailboxStatisticsSearchResult] && ![MPSEWSMailboxStatisticsSearchResultType isValid:[val mailboxStatisticsSearchResult] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindMailboxStatisticsByKeywordsResponseMessageType: MailboxStatisticsSearchResult=%@ super=%@", _mailboxStatisticsSearchResult, [super description]];
}

@end

