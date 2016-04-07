#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSResolveNamesType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSDefaultShapeNamesType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSNonEmptyStringType.h"
#import "../types/MPSEWSResolveNamesSearchScopeType.h"


@implementation MPSEWSResolveNamesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSResolveNamesType class]];

    [handler property    : @"returnFullContactData"
             withAttrTag : @"ReturnFullContactData"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property    : @"searchScope"
             withAttrTag : @"SearchScope"
             withHandler : [MPSEWSResolveNamesSearchScopeType class]];

    [handler property    : @"contactDataShape"
             withAttrTag : @"ContactDataShape"
             withHandler : [MPSEWSDefaultShapeNamesType class]];

    [handler property      : @"parentFolderIds"
             withNamespace : 'm'
             withXmlTag    : @"ParentFolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler property      : @"unresolvedEntry"
             withNamespace : 'm'
             withXmlTag    : @"UnresolvedEntry"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSResolveNamesType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val returnFullContactData] && ![MPSEWSBooleanTypeHandler isValid:[val returnFullContactData] forVersion: ver]) return FALSE;
    if ([val searchScope] && ![MPSEWSResolveNamesSearchScopeType isValid:[val searchScope] forVersion: ver]) return FALSE;
    if ([val contactDataShape] && ![MPSEWSDefaultShapeNamesType isValid:[val contactDataShape] forVersion: ver]) return FALSE;
    if ([val parentFolderIds] && ![MPSEWSNonEmptyArrayOfBaseFolderIdsType isValid:[val parentFolderIds] forVersion:ver]) return FALSE;
    if ([val unresolvedEntry] && ![MPSEWSNonEmptyStringType isValid:[val unresolvedEntry] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSResolveNamesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ResolveNamesType: ReturnFullContactData=%@ SearchScope=%@ ContactDataShape=%@ ParentFolderIds=%@ UnresolvedEntry=%@ super=%@", _returnFullContactData, _searchScope, _contactDataShape, _parentFolderIds, _unresolvedEntry, [super description]];
}

@end

