#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRequestAttachmentIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSRequestAttachmentIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRequestAttachmentIdType class]];

    [handler property    : @"id"
             isRequired  : TRUE
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRequestAttachmentIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RequestAttachmentIdType: Id=%@ super=%@", _id, [super description]];
}

@end

