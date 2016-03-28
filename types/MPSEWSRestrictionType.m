#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRestrictionType.h"
#import "../types/MPSEWSSearchExpressionType.h"


@implementation MPSEWSRestrictionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRestrictionType class]];

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
    return [MPSEWSRestrictionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RestrictionType: SearchExpression=%@", _searchExpression];
}

@end

