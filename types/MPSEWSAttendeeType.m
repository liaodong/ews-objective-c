#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAttendeeType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSEmailAddressType.h"
#import "../types/MPSEWSResponseTypeType.h"


@implementation MPSEWSAttendeeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAttendeeType class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"responseType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ResponseType"
             withHandler   : [MPSEWSResponseTypeType class]];

    [handler property      : @"lastResponseTime"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"LastResponseTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAttendeeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AttendeeType: Mailbox=%@ ResponseType=%@ LastResponseTime=%@", _mailbox, _responseType, _lastResponseTime];
}

@end

