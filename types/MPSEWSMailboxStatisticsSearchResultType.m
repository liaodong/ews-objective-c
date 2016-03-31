#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMailboxStatisticsSearchResultType.h"
#import "../types/MPSEWSKeywordStatisticsSearchResultType.h"
#import "../types/MPSEWSUserMailboxType.h"


@implementation MPSEWSMailboxStatisticsSearchResultType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMailboxStatisticsSearchResultType class]];

    [handler property      : @"userMailbox"
             withNamespace : 't'
             withXmlTag    : @"UserMailbox"
             withHandler   : [MPSEWSUserMailboxType class]];

    [handler property      : @"keywordStatisticsSearchResult"
             withNamespace : 't'
             withXmlTag    : @"KeywordStatisticsSearchResult"
             withHandler   : [MPSEWSKeywordStatisticsSearchResultType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMailboxStatisticsSearchResultType*) val
{   (void) val;
    if ([val userMailbox] && ![MPSEWSUserMailboxType isValid:[val userMailbox]]) return FALSE;
    if ([val keywordStatisticsSearchResult] && ![MPSEWSKeywordStatisticsSearchResultType isValid:[val keywordStatisticsSearchResult]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMailboxStatisticsSearchResultType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MailboxStatisticsSearchResultType: UserMailbox=%@ KeywordStatisticsSearchResult=%@", _userMailbox, _keywordStatisticsSearchResult];
}

@end

