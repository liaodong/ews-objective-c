#import <Foundation/Foundation.h>



@class MPSEWSKeywordStatisticsSearchResultType;
@class MPSEWSUserMailboxType;



/* MailboxStatisticsSearchResultType */
@interface MPSEWSMailboxStatisticsSearchResultType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMailboxStatisticsSearchResultType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUserMailboxType*                   userMailbox;
@property (strong) MPSEWSKeywordStatisticsSearchResultType* keywordStatisticsSearchResult;


@end

