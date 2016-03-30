#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSOccurrenceItemIdType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSDerivedItemIdType.h"


@implementation MPSEWSOccurrenceItemIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSOccurrenceItemIdType class]];

    [handler property    : @"recurringMasterId"
             withAttrTag : @"RecurringMasterId"
             withHandler : [MPSEWSDerivedItemIdType class]];

    [handler property    : @"changeKey"
             withAttrTag : @"ChangeKey"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"instanceIndex"
             withAttrTag : @"InstanceIndex"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSOccurrenceItemIdType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSOccurrenceItemIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"OccurrenceItemIdType: RecurringMasterId=%@ ChangeKey=%@ InstanceIndex=%@ super=%@", _recurringMasterId, _changeKey, _instanceIndex, [super description]];
}

@end

