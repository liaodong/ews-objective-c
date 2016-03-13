#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../types/EWSArrayOfSuggestion.h"
#import "../types/EWSSuggestionQuality.h"



/* SuggestionDayResult */
@interface EWSSuggestionDayResult : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                date             /* xs:dateTime */;
@property (retain) NSString*                dayQuality       /* EWSSuggestionQuality */;
@property (retain) NSArray<EWSSuggestion*>* suggestionArray  /* EWSArrayOfSuggestion */;


@end

