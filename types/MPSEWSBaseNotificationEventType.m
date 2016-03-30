#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseNotificationEventType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSBaseNotificationEventType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseNotificationEventType class]];

    [handler property      : @"watermark"
             withNamespace : 't'
             withXmlTag    : @"Watermark"
             withHandler   : [MPSEWSWatermarkType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseNotificationEventType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseNotificationEventType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseNotificationEventType: Watermark=%@", _watermark];
}

@end

