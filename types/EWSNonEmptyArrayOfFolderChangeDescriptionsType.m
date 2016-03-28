#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfFolderChangeDescriptionsType.h"
#import "../types/EWSAppendToFolderFieldType.h"
#import "../types/EWSDeleteFolderFieldType.h"
#import "../types/EWSSetFolderFieldType.h"


@implementation EWSNonEmptyArrayOfFolderChangeDescriptionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfFolderChangeDescriptionsType class]];

    [handler property      : @"appendToFolderField"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AppendToFolderField"
             withHandler   : [EWSAppendToFolderFieldType class]];

    [handler property      : @"setFolderField"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SetFolderField"
             withHandler   : [EWSSetFolderFieldType class]];

    [handler property      : @"deleteFolderField"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DeleteFolderField"
             withHandler   : [EWSDeleteFolderFieldType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfFolderChangeDescriptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfFolderChangeDescriptionsType: AppendToFolderField=%@ SetFolderField=%@ DeleteFolderField=%@", _appendToFolderField, _setFolderField, _deleteFolderField];
}

@end

