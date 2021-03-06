#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUnsubscribeResponseType.h"
#import "../messages/MPSEWSArrayOfResponseMessagesType.h"


@implementation MPSEWSUnsubscribeResponseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUnsubscribeResponseType class]];

    [handler property      : @"responseMessages"
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessages"
             withHandler   : [MPSEWSArrayOfResponseMessagesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUnsubscribeResponseType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseResponseMessageType isValid:val forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUnsubscribeResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UnsubscribeResponseType: super=%@", [super description]];
}

@end

