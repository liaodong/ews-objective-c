#import <Foundation/Foundation.h>






/* RuleOperationType */
@interface MPSEWSRuleOperationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRuleOperationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

