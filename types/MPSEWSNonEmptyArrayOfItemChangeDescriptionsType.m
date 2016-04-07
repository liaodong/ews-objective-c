#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfItemChangeDescriptionsType.h"
#import "../types/MPSEWSAppendToItemFieldType.h"
#import "../types/MPSEWSDeleteItemFieldType.h"
#import "../types/MPSEWSSetItemFieldType.h"


@implementation MPSEWSNonEmptyArrayOfItemChangeDescriptionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfItemChangeDescriptionsType class]];

    [handler listProperty  : @"appendToItemField"
             useSelector   : @"addAppendToItemField"
             withNamespace : 't'
             withXmlTag    : @"AppendToItemField"
             withHandler   : [MPSEWSAppendToItemFieldType class]];

    [handler listProperty  : @"setItemField"
             useSelector   : @"addSetItemField"
             withNamespace : 't'
             withXmlTag    : @"SetItemField"
             withHandler   : [MPSEWSSetItemFieldType class]];

    [handler listProperty  : @"deleteItemField"
             useSelector   : @"addDeleteItemField"
             withNamespace : 't'
             withXmlTag    : @"DeleteItemField"
             withHandler   : [MPSEWSDeleteItemFieldType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfItemChangeDescriptionsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val appendToItemField]) {
        for (MPSEWSAppendToItemFieldType* obj in [val appendToItemField]) {
            if (![MPSEWSAppendToItemFieldType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val setItemField]) {
        for (MPSEWSSetItemFieldType* obj in [val setItemField]) {
            if (![MPSEWSSetItemFieldType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val deleteItemField]) {
        for (MPSEWSDeleteItemFieldType* obj in [val deleteItemField]) {
            if (![MPSEWSDeleteItemFieldType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfItemChangeDescriptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfItemChangeDescriptionsType: AppendToItemField=%@ SetItemField=%@ DeleteItemField=%@", _appendToItemField, _setItemField, _deleteItemField];
}

- (void) addAppendToItemField:(MPSEWSAppendToItemFieldType*) elem
{
    if (![self appendToItemField]) {
        [self setAppendToItemField:[[NSMutableArray<MPSEWSAppendToItemFieldType*> alloc] init]];
    }
    [_appendToItemField addObject:elem];
}

- (void) addSetItemField:(MPSEWSSetItemFieldType*) elem
{
    if (![self setItemField]) {
        [self setSetItemField:[[NSMutableArray<MPSEWSSetItemFieldType*> alloc] init]];
    }
    [_setItemField addObject:elem];
}

- (void) addDeleteItemField:(MPSEWSDeleteItemFieldType*) elem
{
    if (![self deleteItemField]) {
        [self setDeleteItemField:[[NSMutableArray<MPSEWSDeleteItemFieldType*> alloc] init]];
    }
    [_deleteItemField addObject:elem];
}

@end

