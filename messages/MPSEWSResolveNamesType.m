#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSResolveNamesType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSNonEmptyStringType.h"
#import "../types/MPSEWSResolveNamesSearchScopeType.h"


@implementation MPSEWSResolveNamesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSResolveNamesType class]];

    [handler property    : @"returnFullContactData"
             isRequired  : TRUE
             withAttrTag : @"ReturnFullContactData"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property    : @"searchScope"
             isRequired  : FALSE
             withAttrTag : @"SearchScope"
             withHandler : [MPSEWSResolveNamesSearchScopeType class]];

    [handler property      : @"parentFolderIds"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ParentFolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler property      : @"unresolvedEntry"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"UnresolvedEntry"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler register];
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
    return [NSString stringWithFormat:@"ResolveNamesType: ReturnFullContactData=%@ SearchScope=%@ ParentFolderIds=%@ UnresolvedEntry=%@ super=%@", _returnFullContactData, _searchScope, _parentFolderIds, _unresolvedEntry, [super description]];
}

@end

