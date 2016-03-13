
#import "EWSArrayOfSuggestionDayResult.h"


@implementation EWSArrayOfSuggestionDayResult 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSArrayOfSuggestionDayResult alloc] initWithClass:[EWSArrayOfSuggestionDayResult class]];

    [handler elementName   : @"SuggestionDayResult"
             withNamespace : 't'             withHandler   : [EWSSuggestionDayResult class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

