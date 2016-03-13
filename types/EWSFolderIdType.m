#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSFolderIdType.h"


@implementation EWSFolderIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFolderIdType class]];

    [handler property    : @"id"
             isRequired  : TRUE
             withAttrTag : @"Id"
             withHandler : [EWSStringTypeHandler class]];

    [handler property    : @"changeKey"
             isRequired  : FALSE
             withAttrTag : @"ChangeKey"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FolderIdType: Id=%@ ChangeKey=%@ super=%@", _id, _changeKey, [super description]];
}

@end

