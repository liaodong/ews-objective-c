#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAlternateIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSIdFormatType.h"
#import "../types/MPSEWSNonEmptyStringType.h"


@implementation MPSEWSAlternateIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAlternateIdType class]];

    [handler property    : @"format"
             withAttrTag : @"Format"
             withHandler : [MPSEWSIdFormatType class]];

    [handler property    : @"id"
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"mailbox"
             withAttrTag : @"Mailbox"
             withHandler : [MPSEWSNonEmptyStringType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAlternateIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AlternateIdType: Id=%@ Mailbox=%@ super=%@", _id, _mailbox, [super description]];
}

@end

