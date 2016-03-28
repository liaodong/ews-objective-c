#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSEffectiveRightsType.h"
#import "../handlers/EWSBooleanTypeHandler.h"


@implementation EWSEffectiveRightsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSEffectiveRightsType class]];

    [handler property      : @"createAssociated"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CreateAssociated"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"createContents"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CreateContents"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"createHierarchy"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CreateHierarchy"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"delete"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Delete"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"modify"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Modify"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"read"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Read"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSEffectiveRightsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EffectiveRightsType: CreateAssociated=%@ CreateContents=%@ CreateHierarchy=%@ Delete=%@ Modify=%@ Read=%@", _createAssociated, _createContents, _createHierarchy, _delete, _modify, _read];
}

@end

