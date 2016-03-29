#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfSuggestion.h"
#import "../types/MPSEWSSuggestion.h"


@implementation MPSEWSArrayOfSuggestion 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfSuggestion class]];

    [handler listProperty  : @"suggestion"
             useSelector   : @"addSuggestion"
             withNamespace : 't'
             withXmlTag    : @"Suggestion"
             withHandler   : [MPSEWSSuggestion class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfSuggestion class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfSuggestion: Suggestion=%@", _suggestion];
}

- (void) addSuggestion:(MPSEWSSuggestion*) elem
{
    if (![self suggestion]) {
        [self setSuggestion:[[NSMutableArray<MPSEWSSuggestion*> alloc] init]];
    }
    [_suggestion addObject:elem];
}

@end

