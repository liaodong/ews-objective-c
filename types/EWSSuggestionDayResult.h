#import <Foundation/Foundation.h>



@class EWSArrayOfSuggestion;



/* SuggestionDayResult */
@interface EWSSuggestionDayResult : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*             date             /* xs:dateTime */;
@property (strong) NSString*             dayQuality       /* EWSSuggestionQuality */;
@property (strong) EWSArrayOfSuggestion* suggestionArray;


@end

