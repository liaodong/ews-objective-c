#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfDelegateUserType.h"
#import "../types/EWSDelegateUserType.h"


@implementation EWSArrayOfDelegateUserType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfDelegateUserType class]];

    [handler listProperty  : @"delegateUser"
             isNonEmpty    : TRUE
             useSelector   : @"addDelegateUser"
             withNamespace : 't'
             withXmlTag    : @"DelegateUser"
             withHandler   : [EWSDelegateUserType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfDelegateUserType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfDelegateUserType: DelegateUser=%@", _delegateUser];
}

- (void) addDelegateUser:(EWSDelegateUserType*) elem
{
    if (![self delegateUser]) {
        [self setDelegateUser:[[NSMutableArray<EWSDelegateUserType*> alloc] init]];
    }
    [_delegateUser addObject:elem];
}

@end

