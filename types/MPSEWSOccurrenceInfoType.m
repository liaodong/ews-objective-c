#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSOccurrenceInfoType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSItemIdType.h"


@implementation MPSEWSOccurrenceInfoType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSOccurrenceInfoType class]];

    [handler property      : @"itemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"start"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Start"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"end"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"End"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"originalStart"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"OriginalStart"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSOccurrenceInfoType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"OccurrenceInfoType: ItemId=%@ Start=%@ End=%@ OriginalStart=%@", _itemId, _start, _end, _originalStart];
}

@end

