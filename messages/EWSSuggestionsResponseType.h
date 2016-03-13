#import <Foundation/Foundation.h>




#import "../messages/EWSResponseMessageType.h"
#import "../types/EWSArrayOfSuggestionDayResult.h"



/* SuggestionsResponseType */
@interface EWSSuggestionsResponseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSResponseMessageType*           responseMessage;
@property (retain) NSArray<EWSSuggestionDayResult*>* suggestionDayResultArray  /* EWSArrayOfSuggestionDayResult */;


@end

