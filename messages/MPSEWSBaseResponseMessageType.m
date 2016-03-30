#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseResponseMessageType.h"
#import "../messages/MPSEWSArrayOfResponseMessagesType.h"


@implementation MPSEWSBaseResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseResponseMessageType class]];

    [handler property      : @"responseMessages"
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessages"
             withHandler   : [MPSEWSArrayOfResponseMessagesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseResponseMessageType*) val
{   (void) val;
    if ([val responseMessages] && ![MPSEWSArrayOfResponseMessagesType isValid:[val responseMessages]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseResponseMessageType: ResponseMessages=%@", _responseMessages];
}

@end

