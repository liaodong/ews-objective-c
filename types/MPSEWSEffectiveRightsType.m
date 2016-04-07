#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSEffectiveRightsType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"


@implementation MPSEWSEffectiveRightsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSEffectiveRightsType class]];

    [handler property      : @"createAssociated"
             withNamespace : 't'
             withXmlTag    : @"CreateAssociated"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"createContents"
             withNamespace : 't'
             withXmlTag    : @"CreateContents"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"createHierarchy"
             withNamespace : 't'
             withXmlTag    : @"CreateHierarchy"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"delete"
             withNamespace : 't'
             withXmlTag    : @"Delete"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"modify"
             withNamespace : 't'
             withXmlTag    : @"Modify"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"read"
             withNamespace : 't'
             withXmlTag    : @"Read"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"viewPrivateItems"
             withNamespace : 't'
             withXmlTag    : @"ViewPrivateItems"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSEffectiveRightsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val createAssociated] && ![MPSEWSBooleanTypeHandler isValid:[val createAssociated] forVersion:ver]) return FALSE;
    if ([val createContents] && ![MPSEWSBooleanTypeHandler isValid:[val createContents] forVersion:ver]) return FALSE;
    if ([val createHierarchy] && ![MPSEWSBooleanTypeHandler isValid:[val createHierarchy] forVersion:ver]) return FALSE;
    if ([val delete] && ![MPSEWSBooleanTypeHandler isValid:[val delete] forVersion:ver]) return FALSE;
    if ([val modify] && ![MPSEWSBooleanTypeHandler isValid:[val modify] forVersion:ver]) return FALSE;
    if ([val read] && ![MPSEWSBooleanTypeHandler isValid:[val read] forVersion:ver]) return FALSE;
    if ([val viewPrivateItems] && ![MPSEWSBooleanTypeHandler isValid:[val viewPrivateItems] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSEffectiveRightsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EffectiveRightsType: CreateAssociated=%@ CreateContents=%@ CreateHierarchy=%@ Delete=%@ Modify=%@ Read=%@ ViewPrivateItems=%@", _createAssociated, _createContents, _createHierarchy, _delete, _modify, _read, _viewPrivateItems];
}

@end

