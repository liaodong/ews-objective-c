#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDirectoryEntryType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSDirectoryEntryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDirectoryEntryType class]];

    [handler property      : @"id"
             withNamespace : 't'
             withXmlTag    : @"Id"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDirectoryEntryType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val id  ] && ![MPSEWSEmailAddressType isValid:[val id  ] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDirectoryEntryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DirectoryEntryType: Id=%@", _id];
}

@end

