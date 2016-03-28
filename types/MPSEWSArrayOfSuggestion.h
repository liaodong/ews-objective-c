#import <Foundation/Foundation.h>



@class MPSEWSSuggestion;



/* ArrayOfSuggestion */
@interface MPSEWSArrayOfSuggestion : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSuggestion*>* suggestion;


- (void) addSuggestion:(MPSEWSSuggestion*) elem;
@end

