#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSOpenAsAdminOrSystemServiceType.h"
#import "../types/MPSEWSConnectingSIDType.h"


@implementation MPSEWSOpenAsAdminOrSystemServiceType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSOpenAsAdminOrSystemServiceType class]];

    [handler property      : @"connectingSID"
             withNamespace : 't'
             withXmlTag    : @"ConnectingSID"
             withHandler   : [MPSEWSConnectingSIDType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSOpenAsAdminOrSystemServiceType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val connectingSID] && ![MPSEWSConnectingSIDType isValid:[val connectingSID] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSOpenAsAdminOrSystemServiceType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"OpenAsAdminOrSystemServiceType: ConnectingSID=%@", _connectingSID];
}

@end

