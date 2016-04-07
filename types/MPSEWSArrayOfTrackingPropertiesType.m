#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfTrackingPropertiesType.h"
#import "../types/MPSEWSTrackingPropertyType.h"


@implementation MPSEWSArrayOfTrackingPropertiesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfTrackingPropertiesType class]];

    [handler listProperty  : @"trackingPropertyType"
             useSelector   : @"addTrackingPropertyType"
             withNamespace : 't'
             withXmlTag    : @"TrackingPropertyType"
             withHandler   : [MPSEWSTrackingPropertyType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfTrackingPropertiesType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val trackingPropertyType]) {
        for (MPSEWSTrackingPropertyType* obj in [val trackingPropertyType]) {
            if (![MPSEWSTrackingPropertyType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfTrackingPropertiesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfTrackingPropertiesType: TrackingPropertyType=%@", _trackingPropertyType];
}

- (void) addTrackingPropertyType:(MPSEWSTrackingPropertyType*) elem
{
    if (![self trackingPropertyType]) {
        [self setTrackingPropertyType:[[NSMutableArray<MPSEWSTrackingPropertyType*> alloc] init]];
    }
    [_trackingPropertyType addObject:elem];
}

@end

