#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSSuggestionDayResult;



/* ArrayOfSuggestionDayResult */
@interface MPSEWSArrayOfSuggestionDayResult : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfSuggestionDayResult*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSuggestionDayResult*>* suggestionDayResult;


- (void) addSuggestionDayResult:(MPSEWSSuggestionDayResult*) elem;
@end

