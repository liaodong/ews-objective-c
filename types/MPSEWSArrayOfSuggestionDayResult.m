#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfSuggestionDayResult.h"
#import "../types/MPSEWSSuggestionDayResult.h"


@implementation MPSEWSArrayOfSuggestionDayResult 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfSuggestionDayResult class]];

    [handler listProperty  : @"suggestionDayResult"
             useSelector   : @"addSuggestionDayResult"
             withNamespace : 't'
             withXmlTag    : @"SuggestionDayResult"
             withHandler   : [MPSEWSSuggestionDayResult class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfSuggestionDayResult*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val suggestionDayResult]) {
        for (MPSEWSSuggestionDayResult* obj in [val suggestionDayResult]) {
            if (![MPSEWSSuggestionDayResult isValid:obj forVersion:ver]) return FALSE;
        }
    }
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfSuggestionDayResult class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfSuggestionDayResult: SuggestionDayResult=%@", _suggestionDayResult];
}

- (void) addSuggestionDayResult:(MPSEWSSuggestionDayResult*) elem
{
    if (![self suggestionDayResult]) {
        [self setSuggestionDayResult:[[NSMutableArray<MPSEWSSuggestionDayResult*> alloc] init]];
    }
    [_suggestionDayResult addObject:elem];
}

@end

