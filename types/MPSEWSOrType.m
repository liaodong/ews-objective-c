#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSOrType.h"
#import "../types/MPSEWSSearchExpressionType.h"


@implementation MPSEWSOrType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSOrType class]];

    [handler property      : @"searchExpression"
             withNamespace : 't'
             withXmlTag    : @"SearchExpression"
             withHandler   : [MPSEWSSearchExpressionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSOrType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSOrType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"OrType: super=%@", [super description]];
}

@end

