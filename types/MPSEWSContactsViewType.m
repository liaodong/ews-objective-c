#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSContactsViewType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSContactsViewType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSContactsViewType class]];

    [handler property    : @"maxEntriesReturned"
             withAttrTag : @"MaxEntriesReturned"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"initialName"
             withAttrTag : @"InitialName"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"finalName"
             withAttrTag : @"FinalName"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSContactsViewType*) val
{   (void) val;
    if (![MPSEWSBasePagingType isValid:val]) return FALSE;
    if ([val initialName] && ![MPSEWSStringTypeHandler isValid:[val initialName]]) return FALSE;
    if ([val finalName] && ![MPSEWSStringTypeHandler isValid:[val finalName]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSContactsViewType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ContactsViewType: InitialName=%@ FinalName=%@ super=%@", _initialName, _finalName, [super description]];
}

@end

