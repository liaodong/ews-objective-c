#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSOrType.h"
#import "../types/EWSSearchExpressionType.h"


@implementation EWSOrType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSOrType class]];

    [handler property      : @"searchExpression"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SearchExpression"
             withHandler   : [EWSSearchExpressionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSOrType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"OrType: super=%@", [super description]];
}

@end

