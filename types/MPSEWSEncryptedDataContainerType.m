#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSEncryptedDataContainerType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSEncryptedDataContainerType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSEncryptedDataContainerType class]];

    [handler property      : @"content"
             withNamespace : 't'
             withXmlTag    : @"content"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSEncryptedDataContainerType*) val
{   (void) val;
    if ([val content] && ![MPSEWSStringTypeHandler isValid:[val content]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSEncryptedDataContainerType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EncryptedDataContainerType: content=%@", _content];
}

@end

