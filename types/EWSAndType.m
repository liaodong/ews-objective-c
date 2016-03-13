#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSAndType.h"


@implementation EWSAndType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAndType class]];

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
    return [EWSAndType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AndType: super=%@", [super description]];
}

@end

