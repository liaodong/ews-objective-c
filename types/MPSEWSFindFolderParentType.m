#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindFolderParentType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSArrayOfFoldersType.h"


@implementation MPSEWSFindFolderParentType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindFolderParentType class]];

    [handler property    : @"indexedPagingOffset"
             withAttrTag : @"IndexedPagingOffset"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"numeratorOffset"
             withAttrTag : @"NumeratorOffset"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"absoluteDenominator"
             withAttrTag : @"AbsoluteDenominator"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"includesLastItemInRange"
             withAttrTag : @"IncludesLastItemInRange"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property    : @"totalItemsInView"
             withAttrTag : @"TotalItemsInView"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"folders"
             withNamespace : 't'
             withXmlTag    : @"Folders"
             withHandler   : [MPSEWSArrayOfFoldersType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFindFolderParentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindFolderParentType: IndexedPagingOffset=%@ NumeratorOffset=%@ AbsoluteDenominator=%@ IncludesLastItemInRange=%@ TotalItemsInView=%@ Folders=%@", _indexedPagingOffset, _numeratorOffset, _absoluteDenominator, _includesLastItemInRange, _totalItemsInView, _folders];
}

@end

