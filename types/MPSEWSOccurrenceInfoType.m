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
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"start"
             withNamespace : 't'
             withXmlTag    : @"Start"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"end"
             withNamespace : 't'
             withXmlTag    : @"End"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"originalStart"
             withNamespace : 't'
             withXmlTag    : @"OriginalStart"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSOccurrenceInfoType*) val
{   (void) val;
    return TRUE;
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

