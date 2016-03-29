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

