#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRestrictionType.h"
#import "../types/MPSEWSSearchExpressionType.h"


@implementation MPSEWSRestrictionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRestrictionType class]];

    [handler property      : @"searchExpression"
             withNamespace : 't'
             withXmlTag    : @"SearchExpression"
             withHandler   : [MPSEWSSearchExpressionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRestrictionType*) val
{   (void) val;
    if ([val searchExpression] && ![MPSEWSSearchExpressionType isValid:[val searchExpression]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRestrictionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RestrictionType: SearchExpression=%@", _searchExpression];
}

@end

