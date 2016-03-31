#import <Foundation/Foundation.h>
#import "MPSEWSRuleOperationType.h"



@class MPSEWSRuleType;



/* SetRuleOperationType */
@interface MPSEWSSetRuleOperationType : MPSEWSRuleOperationType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSetRuleOperationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSRuleType* rule;


@end

