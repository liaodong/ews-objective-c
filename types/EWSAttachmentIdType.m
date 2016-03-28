#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAttachmentIdType.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSAttachmentIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAttachmentIdType class]];

    [handler property    : @"id"
             isRequired  : TRUE
             withAttrTag : @"Id"
             withHandler : [EWSStringTypeHandler class]];

    [handler property    : @"rootItemId"
             isRequired  : FALSE
             withAttrTag : @"RootItemId"
             withHandler : [EWSStringTypeHandler class]];

    [handler property    : @"rootItemChangeKey"
             isRequired  : FALSE
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
    return [EWSAttachmentIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AttachmentIdType: RootItemId=%@ RootItemChangeKey=%@ super=%@", _rootItemId, _rootItemChangeKey, [super description]];
}

@end

