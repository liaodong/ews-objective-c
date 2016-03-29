#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfUserIdType.h"
#import "../types/MPSEWSUserIdType.h"


@implementation MPSEWSArrayOfUserIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfUserIdType class]];

    [handler listProperty  : @"userId"
             useSelector   : @"addUserId"
             withNamespace : 't'
             withXmlTag    : @"UserId"
             withHandler   : [MPSEWSUserIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfUserIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfUserIdType: UserId=%@", _userId];
}

- (void) addUserId:(MPSEWSUserIdType*) elem
{
    if (![self userId]) {
        [self setUserId:[[NSMutableArray<MPSEWSUserIdType*> alloc] init]];
    }
    [_userId addObject:elem];
}

@end

