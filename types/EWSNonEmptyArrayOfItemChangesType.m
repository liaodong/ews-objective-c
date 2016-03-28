#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfItemChangesType.h"
#import "../types/EWSItemChangeType.h"


@implementation EWSNonEmptyArrayOfItemChangesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfItemChangesType class]];

    [handler listProperty  : @"itemChange"
             isNonEmpty    : TRUE
             useSelector   : @"addItemChange"
             withNamespace : 't'
             withXmlTag    : @"ItemChange"
             withHandler   : [EWSItemChangeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfItemChangesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfItemChangesType: ItemChange=%@", _itemChange];
}

- (void) addItemChange:(EWSItemChangeType*) elem
{
    if (![self itemChange]) {
        [self setItemChange:[[NSMutableArray<EWSItemChangeType*> alloc] init]];
    }
    [_itemChange addObject:elem];
}

@end

