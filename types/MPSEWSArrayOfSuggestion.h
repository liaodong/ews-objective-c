#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSSuggestion;



/* ArrayOfSuggestion */
@interface MPSEWSArrayOfSuggestion : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfSuggestion*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSuggestion*>* suggestion;


- (void) addSuggestion:(MPSEWSSuggestion*) elem;
@end

