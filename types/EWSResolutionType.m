#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSResolutionType.h"


@implementation EWSResolutionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSResolutionType class]];

    [handler property   : @"mailbox"
             isRequired : TRUE
             withXmlTag : @"Mailbox"
             withHandler: [EWSEmailAddressType class]];

    [handler property   : @"contact"
             isRequired : FALSE
             withXmlTag : @"Contact"
             withHandler: [EWSContactItemType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSResolutionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ResolutionType: Mailbox=%@ Contact=%@", _mailbox, _contact];
}

@end

