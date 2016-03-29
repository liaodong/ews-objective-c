#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNotType.h"
#import "../types/MPSEWSSearchExpressionType.h"


@implementation MPSEWSNotType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNotType class]];

    [handler property      : @"searchExpression"
             isRequired    : TRUE
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
    return [MPSEWSNotType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NotType: SearchExpression=%@ super=%@", _searchExpression, [super description]];
}

@end
