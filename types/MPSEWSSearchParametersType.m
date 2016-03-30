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
             withAttrTag : @"Traversal"
             withHandler : [MPSEWSSearchFolderTraversalType class]];

    [handler property      : @"restriction"
             withNamespace : 't'
             withXmlTag    : @"Restriction"
             withHandler   : [MPSEWSRestrictionType class]];

    [handler property      : @"baseFolderIds"
             withNamespace : 't'
             withXmlTag    : @"BaseFolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSearchParametersType*) val
{   (void) val;
    if ([val traversal] && ![MPSEWSSearchFolderTraversalType isValid:[val traversal]]) return FALSE;
    if ([val restriction] && ![MPSEWSRestrictionType isValid:[val restriction]]) return FALSE;
    if ([val baseFolderIds] && ![MPSEWSNonEmptyArrayOfBaseFolderIdsType isValid:[val baseFolderIds]]) return FALSE;
    return TRUE;
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

