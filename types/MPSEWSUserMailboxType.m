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

+ (BOOL) isValid:(MPSEWSUserMailboxType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val id  ] && ![MPSEWSStringTypeHandler isValid:[val id  ] forVersion: ver]) return FALSE;
    if ([val isArchive] && ![MPSEWSBooleanTypeHandler isValid:[val isArchive] forVersion: ver]) return FALSE;
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

