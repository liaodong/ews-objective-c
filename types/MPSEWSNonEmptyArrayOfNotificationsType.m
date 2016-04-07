#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfNotificationsType.h"
#import "../types/MPSEWSNotificationType.h"


@implementation MPSEWSNonEmptyArrayOfNotificationsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfNotificationsType class]];

    [handler listProperty  : @"notification"
             useSelector   : @"addNotification"
             withNamespace : 't'
             withXmlTag    : @"Notification"
             withHandler   : [MPSEWSNotificationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfNotificationsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val notification]) {
        for (MPSEWSNotificationType* obj in [val notification]) {
            if (![MPSEWSNotificationType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfNotificationsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfNotificationsType: Notification=%@", _notification];
}

- (void) addNotification:(MPSEWSNotificationType*) elem
{
    if (![self notification]) {
        [self setNotification:[[NSMutableArray<MPSEWSNotificationType*> alloc] init]];
    }
    [_notification addObject:elem];
}

@end

