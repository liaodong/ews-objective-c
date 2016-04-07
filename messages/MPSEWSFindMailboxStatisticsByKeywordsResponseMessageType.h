#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSMailboxStatisticsSearchResultType;



/* FindMailboxStatisticsByKeywordsResponseMessageType */
@interface MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSMailboxStatisticsSearchResultType* mailboxStatisticsSearchResult;


@end

