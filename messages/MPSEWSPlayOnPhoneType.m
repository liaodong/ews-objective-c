#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPlayOnPhoneType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSItemIdType.h"


@implementation MPSEWSPlayOnPhoneType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPlayOnPhoneType class]];

    [handler property      : @"itemId"
             withNamespace : 'm'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"dialString"
             withNamespace : 'm'
             withXmlTag    : @"DialString"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSPlayOnPhoneType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val itemId] && ![MPSEWSItemIdType isValid:[val itemId]]) return FALSE;
    if ([val dialString] && ![MPSEWSStringTypeHandler isValid:[val dialString]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPlayOnPhoneType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PlayOnPhoneType: ItemId=%@ DialString=%@ super=%@", _itemId, _dialString, [super description]];
}

@end

