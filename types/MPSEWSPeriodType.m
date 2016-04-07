#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPeriodType.h"
#import "../handlers/MPSEWSDurationTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSPeriodType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPeriodType class]];

    [handler property    : @"bias"
             withAttrTag : @"Bias"
             withHandler : [MPSEWSDurationTypeHandler class]];

    [handler property    : @"name"
             withAttrTag : @"Name"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"id"
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSPeriodType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val bias] && ![MPSEWSDurationTypeHandler isValid:[val bias] forVersion: ver]) return FALSE;
    if ([val name] && ![MPSEWSStringTypeHandler isValid:[val name] forVersion: ver]) return FALSE;
    if ([val id  ] && ![MPSEWSStringTypeHandler isValid:[val id  ] forVersion: ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPeriodType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PeriodType: Bias=%@ Name=%@ Id=%@", _bias, _name, _id];
}

@end

