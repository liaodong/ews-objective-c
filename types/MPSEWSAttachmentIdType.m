#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAttachmentIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSAttachmentIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAttachmentIdType class]];

    [handler property    : @"id"
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"rootItemId"
             withAttrTag : @"RootItemId"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"rootItemChangeKey"
             withAttrTag : @"RootItemChangeKey"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSAttachmentIdType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAttachmentIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AttachmentIdType: RootItemId=%@ RootItemChangeKey=%@ super=%@", _rootItemId, _rootItemChangeKey, [super description]];
}

@end

