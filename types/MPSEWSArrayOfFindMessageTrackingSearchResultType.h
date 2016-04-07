#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSFindMessageTrackingSearchResultType;



/* ArrayOfFindMessageTrackingSearchResultType */
@interface MPSEWSArrayOfFindMessageTrackingSearchResultType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfFindMessageTrackingSearchResultType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSFindMessageTrackingSearchResultType*>* messageTrackingSearchResult;


- (void) addMessageTrackingSearchResult:(MPSEWSFindMessageTrackingSearchResultType*) elem;
@end

