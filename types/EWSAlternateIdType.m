#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAlternateIdType.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSIdFormatType.h"
#import "../types/EWSNonEmptyStringType.h"


@implementation EWSAlternateIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAlternateIdType class]];

    [handler property    : @"format"
             isRequired  : TRUE
             withAttrTag : @"Format"
             withHandler : [EWSIdFormatType class]];

    [handler property    : @"id"
             isRequired  : TRUE
             withAttrTag : @"Id"
             withHandler : [EWSStringTypeHandler class]];

    [handler property    : @"mailbox"
             isRequired  : TRUE
             withAttrTag : @"Mailbox"
             withHandler : [EWSNonEmptyStringType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSAlternateIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AlternateIdType: Id=%@ Mailbox=%@ super=%@", _id, _mailbox, [super description]];
}

@end

