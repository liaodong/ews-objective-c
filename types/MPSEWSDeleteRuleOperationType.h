#import <Foundation/Foundation.h>
#import "MPSEWSRuleOperationType.h"






/* DeleteRuleOperationType */
@interface MPSEWSDeleteRuleOperationType : MPSEWSRuleOperationType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeleteRuleOperationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* ruleId  /* xs:string */;


@end

