#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSRootItemIdType.h"


@implementation EWSRootItemIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRootItemIdType class]];

    [handler property    : @"rootItemId"
             isRequired  : TRUE
             withAttrTag : @"RootItemId"
             withHandler : [EWSStringTypeHandler class]];

    [handler property    : @"rootItemChangeKey"
             isRequired  : TRUE
             withAttrTag : @"RootItemChangeKey"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSRootItemIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RootItemIdType: RootItemId=%@ RootItemChangeKey=%@ super=%@", _rootItemId, _rootItemChangeKey, [super description]];
}

@end

