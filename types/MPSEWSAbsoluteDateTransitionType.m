#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAbsoluteDateTransitionType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSTransitionTargetType.h"


@implementation MPSEWSAbsoluteDateTransitionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAbsoluteDateTransitionType class]];

    [handler property      : @"to"
             withNamespace : 't'
             withXmlTag    : @"To"
             withHandler   : [MPSEWSTransitionTargetType class]];

    [handler property      : @"dateTime"
             withNamespace : 't'
             withXmlTag    : @"DateTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSAbsoluteDateTransitionType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSTransitionType isValid:val forVersion:ver]) return FALSE;
    if ([val dateTime] && ![MPSEWSDateTimeTypeHandler isValid:[val dateTime] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAbsoluteDateTransitionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AbsoluteDateTransitionType: DateTime=%@ super=%@", _dateTime, [super description]];
}

@end

