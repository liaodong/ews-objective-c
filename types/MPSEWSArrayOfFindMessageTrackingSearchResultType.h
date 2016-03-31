#import <Foundation/Foundation.h>



@class MPSEWSFindMessageTrackingSearchResultType;



/* ArrayOfFindMessageTrackingSearchResultType */
@interface MPSEWSArrayOfFindMessageTrackingSearchResultType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfFindMessageTrackingSearchResultType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSFindMessageTrackingSearchResultType*>* messageTrackingSearchResult;


- (void) addMessageTrackingSearchResult:(MPSEWSFindMessageTrackingSearchResultType*) elem;
@end

