#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSAttendeeType.h"


@implementation EWSAttendeeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAttendeeType class]];

    [handler property   : @"mailbox"
             isRequired : TRUE
             withXmlTag : @"Mailbox"
             withHandler: [EWSEmailAddressType class]];

    [handler property   : @"responseType"
             isRequired : FALSE
             withXmlTag : @"ResponseType"
             withHandler: [EWSResponseTypeType class]];

    [handler property   : @"lastResponseTime"
             isRequired : FALSE
             withXmlTag : @"LastResponseTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSAttendeeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AttendeeType: Mailbox=%@ ResponseType=%@ LastResponseTime=%@", _mailbox, _responseType, _lastResponseTime];
}

@end

