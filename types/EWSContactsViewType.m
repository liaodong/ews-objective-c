#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSContactsViewType.h"


@implementation EWSContactsViewType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSContactsViewType class]];

    [handler property    : @"maxEntriesReturned"
             isRequired  : FALSE
             withAttrTag : @"MaxEntriesReturned"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler property    : @"initialName"
             isRequired  : FALSE
             withAttrTag : @"InitialName"
             withHandler : [EWSStringTypeHandler class]];

    [handler property    : @"finalName"
             isRequired  : FALSE
             withAttrTag : @"FinalName"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSContactsViewType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ContactsViewType: InitialName=%@ FinalName=%@ super=%@", _initialName, _finalName, [super description]];
}

@end

