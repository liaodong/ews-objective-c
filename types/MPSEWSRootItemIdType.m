#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRootItemIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSRootItemIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRootItemIdType class]];

    [handler property    : @"rootItemId"
             isRequired  : TRUE
             withAttrTag : @"RootItemId"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"rootItemChangeKey"
             isRequired  : TRUE
             withAttrTag : @"RootItemChangeKey"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRootItemIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RootItemIdType: RootItemId=%@ RootItemChangeKey=%@ super=%@", _rootItemId, _rootItemChangeKey, [super description]];
}

@end

