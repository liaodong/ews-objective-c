#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfUserIdType.h"
#import "../types/EWSUserIdType.h"


@implementation EWSArrayOfUserIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfUserIdType class]];

    [handler listProperty  : @"userId"
             isNonEmpty    : TRUE
             useSelector   : @"addUserId"
             withNamespace : 't'
             withXmlTag    : @"UserId"
             withHandler   : [EWSUserIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfUserIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfUserIdType: UserId=%@", _userId];
}

- (void) addUserId:(EWSUserIdType*) elem
{
    if (![self userId]) {
        [self setUserId:[[NSMutableArray<EWSUserIdType*> alloc] init]];
    }
    [_userId addObject:elem];
}

@end

