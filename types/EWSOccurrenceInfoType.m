#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSOccurrenceInfoType.h"


@implementation EWSOccurrenceInfoType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSOccurrenceInfoType class]];

    [handler property   : @"itemId"
             isRequired : TRUE
             withXmlTag : @"ItemId"
             withHandler: [EWSItemIdType class]];

    [handler property   : @"start"
             isRequired : TRUE
             withXmlTag : @"Start"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"end"
             isRequired : TRUE
             withXmlTag : @"End"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"originalStart"
             isRequired : TRUE
             withXmlTag : @"OriginalStart"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSOccurrenceInfoType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"OccurrenceInfoType: ItemId=%@ Start=%@ End=%@ OriginalStart=%@", _itemId, _start, _end, _originalStart];
}

@end

