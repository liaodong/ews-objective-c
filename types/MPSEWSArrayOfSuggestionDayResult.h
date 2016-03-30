#import <Foundation/Foundation.h>



@class MPSEWSSuggestionDayResult;



/* ArrayOfSuggestionDayResult */
@interface MPSEWSArrayOfSuggestionDayResult : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfSuggestionDayResult*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSuggestionDayResult*>* suggestionDayResult;


- (void) addSuggestionDayResult:(MPSEWSSuggestionDayResult*) elem;
@end

