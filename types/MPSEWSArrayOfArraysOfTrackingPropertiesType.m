#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfArraysOfTrackingPropertiesType.h"
#import "../types/MPSEWSArrayOfTrackingPropertiesType.h"


@implementation MPSEWSArrayOfArraysOfTrackingPropertiesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfArraysOfTrackingPropertiesType class]];

    [handler listProperty  : @"arrayOfTrackingPropertiesType"
             useSelector   : @"addArrayOfTrackingPropertiesType"
             withNamespace : 't'
             withXmlTag    : @"ArrayOfTrackingPropertiesType"
             withHandler   : [MPSEWSArrayOfTrackingPropertiesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfArraysOfTrackingPropertiesType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val arrayOfTrackingPropertiesType]) {
        for (MPSEWSArrayOfTrackingPropertiesType* obj in [val arrayOfTrackingPropertiesType]) {
            if (![MPSEWSArrayOfTrackingPropertiesType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfArraysOfTrackingPropertiesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfArraysOfTrackingPropertiesType: ArrayOfTrackingPropertiesType=%@", _arrayOfTrackingPropertiesType];
}

- (void) addArrayOfTrackingPropertiesType:(MPSEWSArrayOfTrackingPropertiesType*) elem
{
    if (![self arrayOfTrackingPropertiesType]) {
        [self setArrayOfTrackingPropertiesType:[[NSMutableArray<MPSEWSArrayOfTrackingPropertiesType*> alloc] init]];
    }
    [_arrayOfTrackingPropertiesType addObject:elem];
}

@end

