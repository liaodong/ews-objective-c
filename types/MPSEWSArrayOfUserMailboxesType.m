#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfUserMailboxesType.h"
#import "../types/MPSEWSUserMailboxType.h"


@implementation MPSEWSArrayOfUserMailboxesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfUserMailboxesType class]];

    [handler listProperty  : @"userMailbox"
             useSelector   : @"addUserMailbox"
             withNamespace : 't'
             withXmlTag    : @"UserMailbox"
             withHandler   : [MPSEWSUserMailboxType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfUserMailboxesType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val userMailbox]) {
        for (MPSEWSUserMailboxType* obj in [val userMailbox]) {
            if (![MPSEWSUserMailboxType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfUserMailboxesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfUserMailboxesType: UserMailbox=%@", _userMailbox];
}

- (void) addUserMailbox:(MPSEWSUserMailboxType*) elem
{
    if (![self userMailbox]) {
        [self setUserMailbox:[[NSMutableArray<MPSEWSUserMailboxType*> alloc] init]];
    }
    [_userMailbox addObject:elem];
}

@end

