#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSConvertIdType.h"
#import "../types/EWSIdFormatType.h"
#import "../types/EWSNonEmptyArrayOfAlternateIdsType.h"


@implementation EWSConvertIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSConvertIdType class]];

    [handler property    : @"destinationFormat"
             isRequired  : TRUE
             withAttrTag : @"DestinationFormat"
             withHandler : [EWSIdFormatType class]];

    [handler property      : @"sourceIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SourceIds"
             withHandler   : [EWSNonEmptyArrayOfAlternateIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSConvertIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ConvertIdType: DestinationFormat=%@ SourceIds=%@ super=%@", _destinationFormat, _sourceIds, [super description]];
}

@end

