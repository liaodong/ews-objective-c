#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSuggestionDayResult.h"


@implementation EWSSuggestionDayResult 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSuggestionDayResult class]];

    [handler property   : @"date"
             isRequired : TRUE
             withXmlTag : @"Date"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"dayQuality"
             isRequired : TRUE
             withXmlTag : @"DayQuality"
             withHandler: [EWSSuggestionQuality class]];

    [handler property   : @"suggestionArray"
             isRequired : FALSE
             withXmlTag : @"SuggestionArray"
             withHandler: [EWSArrayOfSuggestion class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSuggestionDayResult class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SuggestionDayResult: Date=%@ DayQuality=%@ SuggestionArray=%@", _date, _dayQuality, _suggestionArray];
}

@end

