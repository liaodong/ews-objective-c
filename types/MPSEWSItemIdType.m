#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSItemIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSItemIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSItemIdType class]];

    [handler property    : @"id"
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"changeKey"
             withAttrTag : @"ChangeKey"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSItemIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ItemIdType: Id=%@ ChangeKey=%@ super=%@", _id, _changeKey, [super description]];
}

@end

