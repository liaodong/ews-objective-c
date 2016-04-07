#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNotType.h"
#import "../types/MPSEWSSearchExpressionType.h"


@implementation MPSEWSNotType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNotType class]];

    [handler property      : @"searchExpression"
             withNamespace : 't'
             withXmlTag    : @"SearchExpression"
             withHandler   : [MPSEWSSearchExpressionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNotType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSSearchExpressionType isValid:val forVersion:ver]) return FALSE;
    if ([val searchExpression] && ![MPSEWSSearchExpressionType isValid:[val searchExpression] forVersion:ver]) return FALSE;
    return TRUE;
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

