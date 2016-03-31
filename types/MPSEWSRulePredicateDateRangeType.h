#import <Foundation/Foundation.h>






/* RulePredicateDateRangeType */
@interface MPSEWSRulePredicateDateRangeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRulePredicateDateRangeType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* startDateTime  /* xs:dateTime */;
@property (strong) NSString* endDateTime    /* xs:dateTime */;


@end

