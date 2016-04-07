#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSuggestionDayResult.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSArrayOfSuggestion.h"
#import "../types/MPSEWSSuggestionQuality.h"


@implementation MPSEWSSuggestionDayResult 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSuggestionDayResult class]];

    [handler property      : @"date"
             withNamespace : 't'
             withXmlTag    : @"Date"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"dayQuality"
             withNamespace : 't'
             withXmlTag    : @"DayQuality"
             withHandler   : [MPSEWSSuggestionQuality class]];

    [handler property      : @"suggestionArray"
             withNamespace : 't'
             withXmlTag    : @"SuggestionArray"
             withHandler   : [MPSEWSArrayOfSuggestion class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSuggestionDayResult*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val date] && ![MPSEWSDateTimeTypeHandler isValid:[val date] forVersion:ver]) return FALSE;
    if ([val dayQuality] && ![MPSEWSSuggestionQuality isValid:[val dayQuality] forVersion:ver]) return FALSE;
    if ([val suggestionArray] && ![MPSEWSArrayOfSuggestion isValid:[val suggestionArray] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSuggestionDayResult class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SuggestionDayResult: Date=%@ DayQuality=%@ SuggestionArray=%@", _date, _dayQuality, _suggestionArray];
}

@end

