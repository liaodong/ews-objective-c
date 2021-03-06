#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAlternateIdBaseType.h"
#import "../types/MPSEWSIdFormatType.h"


@implementation MPSEWSAlternateIdBaseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAlternateIdBaseType class]];

    [handler property    : @"format"
             withAttrTag : @"Format"
             withHandler : [MPSEWSIdFormatType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSAlternateIdBaseType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val format] && ![MPSEWSIdFormatType isValid:[val format] forVersion: ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAlternateIdBaseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AlternateIdBaseType: Format=%@", _format];
}

@end

