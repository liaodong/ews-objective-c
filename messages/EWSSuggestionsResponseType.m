#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSuggestionsResponseType.h"
#import "../messages/EWSResponseMessageType.h"
#import "../types/EWSArrayOfSuggestionDayResult.h"


@implementation EWSSuggestionsResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSuggestionsResponseType class]];

    [handler property      : @"responseMessage"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessage"
             withHandler   : [EWSResponseMessageType class]];

    [handler property      : @"suggestionDayResultArray"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SuggestionDayResultArray"
             withHandler   : [EWSArrayOfSuggestionDayResult class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSuggestionsResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SuggestionsResponseType: ResponseMessage=%@ SuggestionDayResultArray=%@", _responseMessage, _suggestionDayResultArray];
}

@end

