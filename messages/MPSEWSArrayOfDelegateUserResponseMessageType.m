#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfDelegateUserResponseMessageType.h"
#import "../messages/MPSEWSDelegateUserResponseMessageType.h"


@implementation MPSEWSArrayOfDelegateUserResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfDelegateUserResponseMessageType class]];

    [handler listProperty  : @"delegateUserResponseMessageType"
             useSelector   : @"addDelegateUserResponseMessageType"
             withNamespace : 'm'
             withXmlTag    : @"DelegateUserResponseMessageType"
             withHandler   : [MPSEWSDelegateUserResponseMessageType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfDelegateUserResponseMessageType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfDelegateUserResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfDelegateUserResponseMessageType: DelegateUserResponseMessageType=%@", _delegateUserResponseMessageType];
}

- (void) addDelegateUserResponseMessageType:(MPSEWSDelegateUserResponseMessageType*) elem
{
    if (![self delegateUserResponseMessageType]) {
        [self setDelegateUserResponseMessageType:[[NSMutableArray<MPSEWSDelegateUserResponseMessageType*> alloc] init]];
    }
    [_delegateUserResponseMessageType addObject:elem];
}

@end

