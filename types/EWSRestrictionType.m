#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSRestrictionType.h"


@implementation EWSRestrictionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRestrictionType class]];

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
    return [EWSRestrictionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RestrictionType: SearchExpression=%@", _searchExpression];
}

@end

