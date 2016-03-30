#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSuggestionsResponseType.h"
#import "../messages/MPSEWSResponseMessageType.h"
#import "../types/MPSEWSArrayOfSuggestionDayResult.h"


@implementation MPSEWSSuggestionsResponseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSuggestionsResponseType class]];

    [handler property      : @"responseMessage"
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler property      : @"suggestionDayResultArray"
             withNamespace : 'm'
             withXmlTag    : @"SuggestionDayResultArray"
             withHandler   : [MPSEWSArrayOfSuggestionDayResult class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSuggestionsResponseType*) val
{   (void) val;
    if ([val responseMessage] && ![MPSEWSResponseMessageType isValid:[val responseMessage]]) return FALSE;
    if ([val suggestionDayResultArray] && ![MPSEWSArrayOfSuggestionDayResult isValid:[val suggestionDayResultArray]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSuggestionsResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SuggestionsResponseType: ResponseMessage=%@ SuggestionDayResultArray=%@", _responseMessage, _suggestionDayResultArray];
}

@end

