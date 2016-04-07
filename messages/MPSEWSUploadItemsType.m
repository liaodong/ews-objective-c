#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUploadItemsType.h"
#import "../types/MPSEWSNonEmptyArrayOfUploadItemsType.h"


@implementation MPSEWSUploadItemsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUploadItemsType class]];

    [handler property      : @"items"
             withNamespace : 'm'
             withXmlTag    : @"Items"
             withHandler   : [MPSEWSNonEmptyArrayOfUploadItemsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUploadItemsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val items] && ![MPSEWSNonEmptyArrayOfUploadItemsType isValid:[val items] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUploadItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UploadItemsType: Items=%@ super=%@", _items, [super description]];
}

@end

