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
             isNonEmpty    : TRUE
             useSelector   : @"addAppendToFolderField"
             withNamespace : 't'
             withXmlTag    : @"AppendToFolderField"
             withHandler   : [MPSEWSAppendToFolderFieldType class]];

    [handler listProperty  : @"setFolderField"
             isNonEmpty    : TRUE
             useSelector   : @"addSetFolderField"
             withNamespace : 't'
             withXmlTag    : @"SetFolderField"
             withHandler   : [MPSEWSSetFolderFieldType class]];

    [handler listProperty  : @"deleteFolderField"
             isNonEmpty    : TRUE
             useSelector   : @"addDeleteFolderField"
             withNamespace : 't'
             withXmlTag    : @"DeleteFolderField"
             withHandler   : [MPSEWSDeleteFolderFieldType class]];

    [handler register];
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

