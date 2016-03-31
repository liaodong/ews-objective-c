#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUserMailboxType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSUserMailboxType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUserMailboxType class]];

    [handler property    : @"id"
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"isArchive"
             withAttrTag : @"IsArchive"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUserMailboxType*) val
{   (void) val;
    if ([val id  ] && ![MPSEWSStringTypeHandler isValid:[val id  ]]) return FALSE;
    if ([val isArchive] && ![MPSEWSBooleanTypeHandler isValid:[val isArchive]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUserMailboxType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UserMailboxType: Id=%@ IsArchive=%@", _id, _isArchive];
}

@end

