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

+ (BOOL) isValid:(MPSEWSBaseResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val responseMessages] && ![MPSEWSArrayOfResponseMessagesType isValid:[val responseMessages] forVersion:ver]) return FALSE;
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

