#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfUploadItemsType.h"
#import "../types/MPSEWSUploadItemType.h"


@implementation MPSEWSNonEmptyArrayOfUploadItemsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfUploadItemsType class]];

    [handler listProperty  : @"item"
             useSelector   : @"addItem"
             withNamespace : 't'
             withXmlTag    : @"Item"
             withHandler   : [MPSEWSUploadItemType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfUploadItemsType*) val
{   (void) val;
    if ([val item]) {
        for (MPSEWSUploadItemType* obj in [val item]) {
            if (![MPSEWSUploadItemType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfUploadItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfUploadItemsType: Item=%@", _item];
}

- (void) addItem:(MPSEWSUploadItemType*) elem
{
    if (![self item]) {
        [self setItem:[[NSMutableArray<MPSEWSUploadItemType*> alloc] init]];
    }
    [_item addObject:elem];
}

@end

