#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRequestAttachmentIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSRequestAttachmentIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRequestAttachmentIdType class]];

    [handler property    : @"id"
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRequestAttachmentIdType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseItemIdType isValid:val forVersion:ver]) return FALSE;
    if ([val id  ] && ![MPSEWSStringTypeHandler isValid:[val id  ] forVersion: ver]) return FALSE;
    return TRUE;
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

