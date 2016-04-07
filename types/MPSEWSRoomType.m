#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRoomType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSRoomType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRoomType class]];

    [handler property      : @"id"
             withNamespace : 't'
             withXmlTag    : @"Id"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRoomType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSDirectoryEntryType isValid:val forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRoomType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RoomType: super=%@", [super description]];
}

@end

