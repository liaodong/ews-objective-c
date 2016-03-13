#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSSearchExpressionType.h"


@implementation EWSSearchExpressionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSearchExpressionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSearchExpressionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SearchExpressionType:"];
}

@end

