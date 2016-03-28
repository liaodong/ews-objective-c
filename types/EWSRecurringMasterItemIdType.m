#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSRecurringMasterItemIdType.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSDerivedItemIdType.h"


@implementation EWSRecurringMasterItemIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRecurringMasterItemIdType class]];

    [handler property    : @"occurrenceId"
             isRequired  : TRUE
             withAttrTag : @"OccurrenceId"
             withHandler : [EWSDerivedItemIdType class]];

    [handler property    : @"changeKey"
             isRequired  : FALSE
             withAttrTag : @"ChangeKey"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSRecurringMasterItemIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RecurringMasterItemIdType: OccurrenceId=%@ ChangeKey=%@ super=%@", _occurrenceId, _changeKey, [super description]];
}

@end

