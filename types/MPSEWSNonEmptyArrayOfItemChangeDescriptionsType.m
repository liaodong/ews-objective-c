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

    [handler property      : @"appendToItemField"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AppendToItemField"
             withHandler   : [MPSEWSAppendToItemFieldType class]];

    [handler property      : @"setItemField"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SetItemField"
             withHandler   : [MPSEWSSetItemFieldType class]];

    [handler property      : @"deleteItemField"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DeleteItemField"
             withHandler   : [MPSEWSDeleteItemFieldType class]];

    [handler register];
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

@end

