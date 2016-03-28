#import <Foundation/Foundation.h>



@class EWSArrayOfSuggestionDayResult;
@class EWSResponseMessageType;



/* SuggestionsResponseType */
@interface EWSSuggestionsResponseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSResponseMessageType*        responseMessage;
@property (strong) EWSArrayOfSuggestionDayResult* suggestionDayResultArray;


@end

