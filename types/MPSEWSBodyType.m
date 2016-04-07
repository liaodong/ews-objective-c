#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBodyType.h"
#import "../types/MPSEWSBodyTypeType.h"


@implementation MPSEWSBodyType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBodyType class] andContentHandlerClass:[MPSEWSStringTypeHandler class]];

    [handler property    : @"bodyType"
             withAttrTag : @"BodyType"
             withHandler : [MPSEWSBodyTypeType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBodyType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSStringType isValid:val forVersion:ver]) return FALSE;
    if ([val bodyType] && ![MPSEWSBodyTypeType isValid:[val bodyType] forVersion: ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBodyType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BodyType: BodyType=%@ super=%@", _bodyType, [super description]];
}

@end

