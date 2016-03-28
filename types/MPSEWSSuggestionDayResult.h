#import <Foundation/Foundation.h>



@class MPSEWSArrayOfSuggestion;



/* SuggestionDayResult */
@interface MPSEWSSuggestionDayResult : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                date             /* xs:dateTime */;
@property (strong) NSString*                dayQuality       /* MPSEWSSuggestionQuality */;
@property (strong) MPSEWSArrayOfSuggestion* suggestionArray;


@end

