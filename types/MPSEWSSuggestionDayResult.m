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
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Date"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"dayQuality"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DayQuality"
             withHandler   : [MPSEWSSuggestionQuality class]];

    [handler property      : @"suggestionArray"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"SuggestionArray"
             withHandler   : [MPSEWSArrayOfSuggestion class]];

    [handler register];
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

