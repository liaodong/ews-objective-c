#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfSuggestion.h"
#import "../types/EWSSuggestion.h"


@implementation EWSArrayOfSuggestion 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfSuggestion class]];

    [handler listProperty  : @"suggestion"
             isNonEmpty    : FALSE
             useSelector   : @"addSuggestion"
             withNamespace : 't'
             withXmlTag    : @"Suggestion"
             withHandler   : [EWSSuggestion class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfSuggestion class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfSuggestion: Suggestion=%@", _suggestion];
}

- (void) addSuggestion:(EWSSuggestion*) elem
{
    if (![self suggestion]) {
        [self setSuggestion:[[NSMutableArray<EWSSuggestion*> alloc] init]];
    }
    [_suggestion addObject:elem];
}

@end

