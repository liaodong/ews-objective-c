#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetServerTimeZonesType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSNonEmptyArrayOfTimeZoneIdType.h"


@implementation MPSEWSGetServerTimeZonesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetServerTimeZonesType class]];

    [handler property    : @"returnFullTimeZoneData"
             withAttrTag : @"ReturnFullTimeZoneData"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"ids"
             withNamespace : 'm'
             withXmlTag    : @"Ids"
             withHandler   : [MPSEWSNonEmptyArrayOfTimeZoneIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetServerTimeZonesType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val returnFullTimeZoneData] && ![MPSEWSBooleanTypeHandler isValid:[val returnFullTimeZoneData]]) return FALSE;
    if ([val ids ] && ![MPSEWSNonEmptyArrayOfTimeZoneIdType isValid:[val ids ]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetServerTimeZonesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetServerTimeZonesType: ReturnFullTimeZoneData=%@ Ids=%@ super=%@", _returnFullTimeZoneData, _ids, [super description]];
}

@end

