#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSKeywordStatisticsSearchResultType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSKeywordStatisticsSearchResultType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSKeywordStatisticsSearchResultType class]];

    [handler property      : @"keyword"
             withNamespace : 't'
             withXmlTag    : @"Keyword"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"itemHits"
             withNamespace : 't'
             withXmlTag    : @"ItemHits"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"size"
             withNamespace : 't'
             withXmlTag    : @"Size"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSKeywordStatisticsSearchResultType*) val
{   (void) val;
    if ([val keyword] && ![MPSEWSStringTypeHandler isValid:[val keyword]]) return FALSE;
    if ([val itemHits] && ![MPSEWSIntegerTypeHandler isValid:[val itemHits]]) return FALSE;
    if ([val size] && ![MPSEWSIntegerTypeHandler isValid:[val size]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSKeywordStatisticsSearchResultType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"KeywordStatisticsSearchResultType: Keyword=%@ ItemHits=%@ Size=%@", _keyword, _itemHits, _size];
}

@end

