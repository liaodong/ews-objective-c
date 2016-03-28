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

    [handler property      : @"appendToFolderField"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AppendToFolderField"
             withHandler   : [MPSEWSAppendToFolderFieldType class]];

    [handler property      : @"setFolderField"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SetFolderField"
             withHandler   : [MPSEWSSetFolderFieldType class]];

    [handler property      : @"deleteFolderField"
             isRequired    : TRUE
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

@end

