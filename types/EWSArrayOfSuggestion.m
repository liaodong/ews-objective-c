
#import "EWSArrayOfSuggestion.h"


@implementation EWSArrayOfSuggestion 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSArrayOfSuggestion alloc] initWithClass:[EWSArrayOfSuggestion class]];

    [handler elementName   : @"Suggestion"
             withNamespace : 't'             withHandler   : [EWSSuggestion class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

