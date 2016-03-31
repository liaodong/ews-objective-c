#import <Foundation/Foundation.h>






/* KeywordStatisticsSearchResultType */
@interface MPSEWSKeywordStatisticsSearchResultType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSKeywordStatisticsSearchResultType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* keyword   /* xs:string */;
@property (strong) NSNumber* itemHits  /* xs:int */;
@property (strong) NSNumber* size      /* xs:int */;


@end

