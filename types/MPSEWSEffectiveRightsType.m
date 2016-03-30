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

    [handler register];
}

+ (BOOL) isValid:(MPSEWSEffectiveRightsType*) val
{   (void) val;
    if ([val createAssociated] && ![MPSEWSBooleanTypeHandler isValid:[val createAssociated]]) return FALSE;
    if ([val createContents] && ![MPSEWSBooleanTypeHandler isValid:[val createContents]]) return FALSE;
    if ([val createHierarchy] && ![MPSEWSBooleanTypeHandler isValid:[val createHierarchy]]) return FALSE;
    if ([val delete] && ![MPSEWSBooleanTypeHandler isValid:[val delete]]) return FALSE;
    if ([val modify] && ![MPSEWSBooleanTypeHandler isValid:[val modify]]) return FALSE;
    if ([val read] && ![MPSEWSBooleanTypeHandler isValid:[val read]]) return FALSE;
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
    return [NSString stringWithFormat:@"EffectiveRightsType: CreateAssociated=%@ CreateContents=%@ CreateHierarchy=%@ Delete=%@ Modify=%@ Read=%@", _createAssociated, _createContents, _createHierarchy, _delete, _modify, _read];
}

@end

