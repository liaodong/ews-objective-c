#import <Foundation/Foundation.h>



@class EWSSuggestionDayResult;



/* ArrayOfSuggestionDayResult */
@interface EWSArrayOfSuggestionDayResult : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSSuggestionDayResult*>* suggestionDayResult;


- (void) addSuggestionDayResult:(EWSSuggestionDayResult*) elem;
@end

