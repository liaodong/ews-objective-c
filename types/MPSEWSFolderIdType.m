#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFolderIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSFolderIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFolderIdType class]];

    [handler property    : @"id"
             isRequired  : TRUE
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"changeKey"
             isRequired  : FALSE
             withAttrTag : @"ChangeKey"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FolderIdType: Id=%@ ChangeKey=%@ super=%@", _id, _changeKey, [super description]];
}

@end

