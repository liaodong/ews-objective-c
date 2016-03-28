#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfSuggestionDayResult.h"
#import "../types/EWSSuggestionDayResult.h"


@implementation EWSArrayOfSuggestionDayResult 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfSuggestionDayResult class]];

    [handler listProperty  : @"suggestionDayResult"
             isNonEmpty    : FALSE
             useSelector   : @"addSuggestionDayResult"
             withNamespace : 't'
             withXmlTag    : @"SuggestionDayResult"
             withHandler   : [EWSSuggestionDayResult class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfSuggestionDayResult class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfSuggestionDayResult: SuggestionDayResult=%@", _suggestionDayResult];
}

- (void) addSuggestionDayResult:(EWSSuggestionDayResult*) elem
{
    if (![self suggestionDayResult]) {
        [self setSuggestionDayResult:[[NSMutableArray<EWSSuggestionDayResult*> alloc] init]];
    }
    [_suggestionDayResult addObject:elem];
}

@end

