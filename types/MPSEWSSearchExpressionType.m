#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSearchExpressionType.h"


@implementation MPSEWSSearchExpressionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSearchExpressionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSearchExpressionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SearchExpressionType:"];
}

@end

