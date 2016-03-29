#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAndType.h"
#import "../types/MPSEWSSearchExpressionType.h"


@implementation MPSEWSAndType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAndType class]];

    [handler property      : @"searchExpression"
             withNamespace : 't'
             withXmlTag    : @"SearchExpression"
             withHandler   : [MPSEWSSearchExpressionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAndType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AndType: super=%@", [super description]];
}

@end

