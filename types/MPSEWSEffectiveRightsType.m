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

