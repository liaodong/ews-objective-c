#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSOccurrenceItemIdType.h"


@implementation EWSOccurrenceItemIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSOccurrenceItemIdType class]];

    [handler property    : @"recurringMasterId"
             isRequired  : TRUE
             withAttrTag : @"RecurringMasterId"
             withHandler : [EWSDerivedItemIdType class]];

    [handler property    : @"changeKey"
             isRequired  : FALSE
             withAttrTag : @"ChangeKey"
             withHandler : [EWSStringTypeHandler class]];

    [handler property    : @"instanceIndex"
             isRequired  : TRUE
             withAttrTag : @"InstanceIndex"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSOccurrenceItemIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"OccurrenceItemIdType: RecurringMasterId=%@ ChangeKey=%@ InstanceIndex=%@ super=%@", _recurringMasterId, _changeKey, _instanceIndex, [super description]];
}

@end

