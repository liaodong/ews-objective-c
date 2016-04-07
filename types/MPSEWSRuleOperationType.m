#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRuleOperationType.h"


@implementation MPSEWSRuleOperationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRuleOperationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRuleOperationType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRuleOperationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RuleOperationType:"];
}

@end

