#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfItemChangeDescriptionsType.h"
#import "../types/EWSAppendToItemFieldType.h"
#import "../types/EWSDeleteItemFieldType.h"
#import "../types/EWSSetItemFieldType.h"


@implementation EWSNonEmptyArrayOfItemChangeDescriptionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfItemChangeDescriptionsType class]];

    [handler property      : @"appendToItemField"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AppendToItemField"
             withHandler   : [EWSAppendToItemFieldType class]];

    [handler property      : @"setItemField"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SetItemField"
             withHandler   : [EWSSetItemFieldType class]];

    [handler property      : @"deleteItemField"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DeleteItemField"
             withHandler   : [EWSDeleteItemFieldType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfItemChangeDescriptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfItemChangeDescriptionsType: AppendToItemField=%@ SetItemField=%@ DeleteItemField=%@", _appendToItemField, _setItemField, _deleteItemField];
}

@end

