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

+ (BOOL) isValid:(MPSEWSDirectoryEntryType*) val
{   (void) val;
    if ([val id  ] && ![MPSEWSEmailAddressType isValid:[val id  ]]) return FALSE;
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

