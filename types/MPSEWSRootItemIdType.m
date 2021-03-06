#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRootItemIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSRootItemIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRootItemIdType class]];

    [handler property    : @"rootItemId"
             withAttrTag : @"RootItemId"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"rootItemChangeKey"
             withAttrTag : @"RootItemChangeKey"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRootItemIdType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseItemIdType isValid:val forVersion:ver]) return FALSE;
    if ([val rootItemId] && ![MPSEWSStringTypeHandler isValid:[val rootItemId] forVersion: ver]) return FALSE;
    if ([val rootItemChangeKey] && ![MPSEWSStringTypeHandler isValid:[val rootItemChangeKey] forVersion: ver]) return FALSE;
    return TRUE;
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

