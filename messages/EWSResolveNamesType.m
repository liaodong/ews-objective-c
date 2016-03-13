#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSResolveNamesType.h"


@implementation EWSResolveNamesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSResolveNamesType class]];

    [handler property    : @"returnFullContactData"
             isRequired  : TRUE
             withAttrTag : @"ReturnFullContactData"
             withHandler : [EWSBooleanTypeHandler class]];

    [handler property    : @"searchScope"
             isRequired  : FALSE
             withAttrTag : @"SearchScope"
             withHandler : [EWSResolveNamesSearchScopeType class]];

    [handler property      : @"parentFolderIds"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ParentFolderIds"
             withHandler   : [EWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler property      : @"unresolvedEntry"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"UnresolvedEntry"
             withHandler   : [EWSNonEmptyStringType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSResolveNamesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ResolveNamesType: ReturnFullContactData=%@ SearchScope=%@ ParentFolderIds=%@ UnresolvedEntry=%@ super=%@", _returnFullContactData, _searchScope, _parentFolderIds, _unresolvedEntry, [super description]];
}

@end

