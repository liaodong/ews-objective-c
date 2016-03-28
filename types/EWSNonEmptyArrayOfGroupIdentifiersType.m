#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfGroupIdentifiersType.h"
#import "../types/EWSSidAndAttributesType.h"


@implementation EWSNonEmptyArrayOfGroupIdentifiersType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfGroupIdentifiersType class]];

    [handler listProperty  : @"groupIdentifier"
             isNonEmpty    : TRUE
             useSelector   : @"addGroupIdentifier"
             withNamespace : 't'
             withXmlTag    : @"GroupIdentifier"
             withHandler   : [EWSSidAndAttributesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfGroupIdentifiersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfGroupIdentifiersType: GroupIdentifier=%@", _groupIdentifier];
}

- (void) addGroupIdentifier:(EWSSidAndAttributesType*) elem
{
    if (![self groupIdentifier]) {
        [self setGroupIdentifier:[[NSMutableArray<EWSSidAndAttributesType*> alloc] init]];
    }
    [_groupIdentifier addObject:elem];
}

@end

