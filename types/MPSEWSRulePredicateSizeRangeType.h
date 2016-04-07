#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* RulePredicateSizeRangeType */
@interface MPSEWSRulePredicateSizeRangeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRulePredicateSizeRangeType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* minimumSize  /* xs:int */;
@property (strong) NSNumber* maximumSize  /* xs:int */;


@end

