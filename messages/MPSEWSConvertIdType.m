#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSConvertIdType.h"
#import "../types/MPSEWSIdFormatType.h"
#import "../types/MPSEWSNonEmptyArrayOfAlternateIdsType.h"


@implementation MPSEWSConvertIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSConvertIdType class]];

    [handler property    : @"destinationFormat"
             withAttrTag : @"DestinationFormat"
             withHandler : [MPSEWSIdFormatType class]];

    [handler property      : @"sourceIds"
             withNamespace : 'm'
             withXmlTag    : @"SourceIds"
             withHandler   : [MPSEWSNonEmptyArrayOfAlternateIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSConvertIdType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val destinationFormat] && ![MPSEWSIdFormatType isValid:[val destinationFormat] forVersion: ver]) return FALSE;
    if ([val sourceIds] && ![MPSEWSNonEmptyArrayOfAlternateIdsType isValid:[val sourceIds] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSConvertIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ConvertIdType: DestinationFormat=%@ SourceIds=%@ super=%@", _destinationFormat, _sourceIds, [super description]];
}

@end

