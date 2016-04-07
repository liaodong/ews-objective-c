#import <Foundation/Foundation.h>
#import "MPSEWSRuleOperationType.h"



@class MPSEWSRuleType;



/* CreateRuleOperationType */
@interface MPSEWSCreateRuleOperationType : MPSEWSRuleOperationType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCreateRuleOperationType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSRuleType* rule;


@end

