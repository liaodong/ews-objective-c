#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType.h"
#import "../types/MPSEWSAppendToFolderFieldType.h"
#import "../types/MPSEWSDeleteFolderFieldType.h"
#import "../types/MPSEWSSetFolderFieldType.h"


@implementation MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType class]];

    [handler listProperty  : @"appendToFolderField"
             useSelector   : @"addAppendToFolderField"
             withNamespace : 't'
             withXmlTag    : @"AppendToFolderField"
             withHandler   : [MPSEWSAppendToFolderFieldType class]];

    [handler listProperty  : @"setFolderField"
             useSelector   : @"addSetFolderField"
             withNamespace : 't'
             withXmlTag    : @"SetFolderField"
             withHandler   : [MPSEWSSetFolderFieldType class]];

    [handler listProperty  : @"deleteFolderField"
             useSelector   : @"addDeleteFolderField"
             withNamespace : 't'
             withXmlTag    : @"DeleteFolderField"
             withHandler   : [MPSEWSDeleteFolderFieldType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val appendToFolderField]) {
        for (MPSEWSAppendToFolderFieldType* obj in [val appendToFolderField]) {
            if (![MPSEWSAppendToFolderFieldType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val setFolderField]) {
        for (MPSEWSSetFolderFieldType* obj in [val setFolderField]) {
            if (![MPSEWSSetFolderFieldType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val deleteFolderField]) {
        for (MPSEWSDeleteFolderFieldType* obj in [val deleteFolderField]) {
            if (![MPSEWSDeleteFolderFieldType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfFolderChangeDescriptionsType: AppendToFolderField=%@ SetFolderField=%@ DeleteFolderField=%@", _appendToFolderField, _setFolderField, _deleteFolderField];
}

- (void) addAppendToFolderField:(MPSEWSAppendToFolderFieldType*) elem
{
    if (![self appendToFolderField]) {
        [self setAppendToFolderField:[[NSMutableArray<MPSEWSAppendToFolderFieldType*> alloc] init]];
    }
    [_appendToFolderField addObject:elem];
}

- (void) addSetFolderField:(MPSEWSSetFolderFieldType*) elem
{
    if (![self setFolderField]) {
        [self setSetFolderField:[[NSMutableArray<MPSEWSSetFolderFieldType*> alloc] init]];
    }
    [_setFolderField addObject:elem];
}

- (void) addDeleteFolderField:(MPSEWSDeleteFolderFieldType*) elem
{
    if (![self deleteFolderField]) {
        [self setDeleteFolderField:[[NSMutableArray<MPSEWSDeleteFolderFieldType*> alloc] init]];
    }
    [_deleteFolderField addObject:elem];
}

@end

