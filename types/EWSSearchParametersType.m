#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSearchParametersType.h"


@implementation EWSSearchParametersType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSearchParametersType class]];

    [handler property    : @"traversal"
             isRequired  : FALSE
             withAttrTag : @"Traversal"
             withHandler : [EWSSearchFolderTraversalType class]];

    [handler property   : @"restriction"
             isRequired : TRUE
             withXmlTag : @"Restriction"
             withHandler: [EWSRestrictionType class]];

    [handler property   : @"baseFolderIds"
             isRequired : TRUE
             withXmlTag : @"BaseFolderIds"
             withHandler: [EWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSearchParametersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SearchParametersType: Traversal=%@ Restriction=%@ BaseFolderIds=%@", _traversal, _restriction, _baseFolderIds];
}

@end

