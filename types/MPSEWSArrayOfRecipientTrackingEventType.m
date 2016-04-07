#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfRecipientTrackingEventType.h"
#import "../types/MPSEWSRecipientTrackingEventType.h"


@implementation MPSEWSArrayOfRecipientTrackingEventType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfRecipientTrackingEventType class]];

    [handler listProperty  : @"recipientTrackingEvent"
             useSelector   : @"addRecipientTrackingEvent"
             withNamespace : 't'
             withXmlTag    : @"RecipientTrackingEvent"
             withHandler   : [MPSEWSRecipientTrackingEventType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfRecipientTrackingEventType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val recipientTrackingEvent]) {
        for (MPSEWSRecipientTrackingEventType* obj in [val recipientTrackingEvent]) {
            if (![MPSEWSRecipientTrackingEventType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfRecipientTrackingEventType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRecipientTrackingEventType: RecipientTrackingEvent=%@", _recipientTrackingEvent];
}

- (void) addRecipientTrackingEvent:(MPSEWSRecipientTrackingEventType*) elem
{
    if (![self recipientTrackingEvent]) {
        [self setRecipientTrackingEvent:[[NSMutableArray<MPSEWSRecipientTrackingEventType*> alloc] init]];
    }
    [_recipientTrackingEvent addObject:elem];
}

@end

