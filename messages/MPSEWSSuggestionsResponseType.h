#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfSuggestionDayResult;
@class MPSEWSResponseMessageType;



/* SuggestionsResponseType */
@interface MPSEWSSuggestionsResponseType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSuggestionsResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSResponseMessageType*        responseMessage;
@property (strong) MPSEWSArrayOfSuggestionDayResult* suggestionDayResultArray;


@end

