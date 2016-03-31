#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSEncryptedSharedFolderDataType.h"
#import "../types/MPSEWSEncryptedDataContainerType.h"


@implementation MPSEWSEncryptedSharedFolderDataType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSEncryptedSharedFolderDataType class]];

    [handler property      : @"token"
             withNamespace : 't'
             withXmlTag    : @"Token"
             withHandler   : [MPSEWSEncryptedDataContainerType class]];

    [handler property      : @"data"
             withNamespace : 't'
             withXmlTag    : @"Data"
             withHandler   : [MPSEWSEncryptedDataContainerType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSEncryptedSharedFolderDataType*) val
{   (void) val;
    if ([val token] && ![MPSEWSEncryptedDataContainerType isValid:[val token]]) return FALSE;
    if ([val data] && ![MPSEWSEncryptedDataContainerType isValid:[val data]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSEncryptedSharedFolderDataType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EncryptedSharedFolderDataType: Token=%@ Data=%@", _token, _data];
}

@end

