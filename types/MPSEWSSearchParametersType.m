#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSearchParametersType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSRestrictionType.h"
#import "../types/MPSEWSSearchFolderTraversalType.h"


@implementation MPSEWSSearchParametersType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSearchParametersType class]];

    [handler property    : @"traversal"
             isRequired  : FALSE
             withAttrTag : @"Traversal"
             withHandler : [MPSEWSSearchFolderTraversalType class]];

    [handler property      : @"restriction"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Restriction"
             withHandler   : [MPSEWSRestrictionType class]];

    [handler property      : @"baseFolderIds"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"BaseFolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSearchParametersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SearchParametersType: Traversal=%@ Restriction=%@ BaseFolderIds=%@", _traversal, _restriction, _baseFolderIds];
}

@end

