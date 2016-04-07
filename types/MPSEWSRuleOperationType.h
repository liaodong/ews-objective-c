#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* RuleOperationType */
@interface MPSEWSRuleOperationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRuleOperationType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

