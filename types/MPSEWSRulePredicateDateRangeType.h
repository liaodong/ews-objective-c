#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* RulePredicateDateRangeType */
@interface MPSEWSRulePredicateDateRangeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRulePredicateDateRangeType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* startDateTime  /* xs:dateTime */;
@property (strong) NSString* endDateTime    /* xs:dateTime */;


@end

