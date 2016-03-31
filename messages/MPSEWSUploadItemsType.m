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

+ (BOOL) isValid:(MPSEWSUploadItemsType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val items] && ![MPSEWSNonEmptyArrayOfUploadItemsType isValid:[val items]]) return FALSE;
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

