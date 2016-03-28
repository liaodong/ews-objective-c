#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRecurringMasterItemIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSDerivedItemIdType.h"


@implementation MPSEWSRecurringMasterItemIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRecurringMasterItemIdType class]];

    [handler property    : @"occurrenceId"
             isRequired  : TRUE
             withAttrTag : @"OccurrenceId"
             withHandler : [MPSEWSDerivedItemIdType class]];

    [handler property    : @"changeKey"
             isRequired  : FALSE
             withAttrTag : @"ChangeKey"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRecurringMasterItemIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RecurringMasterItemIdType: OccurrenceId=%@ ChangeKey=%@ super=%@", _occurrenceId, _changeKey, [super description]];
}

@end

