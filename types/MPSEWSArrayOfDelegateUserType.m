#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfDelegateUserType.h"
#import "../types/MPSEWSDelegateUserType.h"


@implementation MPSEWSArrayOfDelegateUserType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfDelegateUserType class]];

    [handler listProperty  : @"delegateUser"
             useSelector   : @"addDelegateUser"
             withNamespace : 't'
             withXmlTag    : @"DelegateUser"
             withHandler   : [MPSEWSDelegateUserType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfDelegateUserType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfDelegateUserType: DelegateUser=%@", _delegateUser];
}

- (void) addDelegateUser:(MPSEWSDelegateUserType*) elem
{
    if (![self delegateUser]) {
        [self setDelegateUser:[[NSMutableArray<MPSEWSDelegateUserType*> alloc] init]];
    }
    [_delegateUser addObject:elem];
}

@end

