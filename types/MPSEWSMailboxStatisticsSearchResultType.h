#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSKeywordStatisticsSearchResultType;
@class MPSEWSUserMailboxType;



/* MailboxStatisticsSearchResultType */
@interface MPSEWSMailboxStatisticsSearchResultType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMailboxStatisticsSearchResultType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUserMailboxType*                   userMailbox;
@property (strong) MPSEWSKeywordStatisticsSearchResultType* keywordStatisticsSearchResult;


@end

