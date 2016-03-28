#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfRestrictedGroupIdentifiersType.h"
#import "../types/EWSSidAndAttributesType.h"


@implementation EWSNonEmptyArrayOfRestrictedGroupIdentifiersType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfRestrictedGroupIdentifiersType class]];

    [handler listProperty  : @"restrictedGroupIdentifier"
             isNonEmpty    : TRUE
             useSelector   : @"addRestrictedGroupIdentifier"
             withNamespace : 't'
             withXmlTag    : @"RestrictedGroupIdentifier"
             withHandler   : [EWSSidAndAttributesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfRestrictedGroupIdentifiersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfRestrictedGroupIdentifiersType: RestrictedGroupIdentifier=%@", _restrictedGroupIdentifier];
}

- (void) addRestrictedGroupIdentifier:(EWSSidAndAttributesType*) elem
{
    if (![self restrictedGroupIdentifier]) {
        [self setRestrictedGroupIdentifier:[[NSMutableArray<EWSSidAndAttributesType*> alloc] init]];
    }
    [_restrictedGroupIdentifier addObject:elem];
}

@end

