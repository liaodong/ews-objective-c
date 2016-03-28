#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfDelegateUserResponseMessageType.h"
#import "../messages/EWSDelegateUserResponseMessageType.h"


@implementation EWSArrayOfDelegateUserResponseMessageType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfDelegateUserResponseMessageType class]];

    [handler listProperty  : @"delegateUserResponseMessageType"
             isNonEmpty    : TRUE
             useSelector   : @"addDelegateUserResponseMessageType"
             withNamespace : 'm'
             withXmlTag    : @"DelegateUserResponseMessageType"
             withHandler   : [EWSDelegateUserResponseMessageType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfDelegateUserResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfDelegateUserResponseMessageType: DelegateUserResponseMessageType=%@", _delegateUserResponseMessageType];
}

- (void) addDelegateUserResponseMessageType:(EWSDelegateUserResponseMessageType*) elem
{
    if (![self delegateUserResponseMessageType]) {
        [self setDelegateUserResponseMessageType:[[NSMutableArray<EWSDelegateUserResponseMessageType*> alloc] init]];
    }
    [_delegateUserResponseMessageType addObject:elem];
}

@end

