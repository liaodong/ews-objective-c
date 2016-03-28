#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSRequestAttachmentIdType.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSRequestAttachmentIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRequestAttachmentIdType class]];

    [handler property    : @"id"
             isRequired  : TRUE
             withAttrTag : @"Id"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSRequestAttachmentIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RequestAttachmentIdType: Id=%@ super=%@", _id, [super description]];
}

@end

