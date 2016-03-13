#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNotType.h"


@implementation EWSNotType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNotType class]];

    [handler property   : @"searchExpression"
             isRequired : TRUE
             withXmlTag : @"SearchExpression"
             withHandler: [EWSSearchExpressionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNotType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NotType: SearchExpression=%@ super=%@", _searchExpression, [super description]];
}

@end

