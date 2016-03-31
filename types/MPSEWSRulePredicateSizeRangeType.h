#import <Foundation/Foundation.h>






/* RulePredicateSizeRangeType */
@interface MPSEWSRulePredicateSizeRangeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRulePredicateSizeRangeType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* minimumSize  /* xs:int */;
@property (strong) NSNumber* maximumSize  /* xs:int */;


@end

