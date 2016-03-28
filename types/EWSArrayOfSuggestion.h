#import <Foundation/Foundation.h>



@class EWSSuggestion;



/* ArrayOfSuggestion */
@interface EWSArrayOfSuggestion : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSSuggestion*>* suggestion;


- (void) addSuggestion:(EWSSuggestion*) elem;
@end

