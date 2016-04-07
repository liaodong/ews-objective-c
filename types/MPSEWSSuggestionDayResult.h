#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfSuggestion;



/* SuggestionDayResult */
@interface MPSEWSSuggestionDayResult : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSuggestionDayResult*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                date             /* xs:dateTime */;
@property (strong) NSString*                dayQuality       /* MPSEWSSuggestionQuality */;
@property (strong) MPSEWSArrayOfSuggestion* suggestionArray;


@end

