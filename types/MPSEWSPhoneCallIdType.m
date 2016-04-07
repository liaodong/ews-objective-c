#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPhoneCallIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSPhoneCallIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPhoneCallIdType class]];

    [handler property    : @"id"
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSPhoneCallIdType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val id  ] && ![MPSEWSStringTypeHandler isValid:[val id  ] forVersion: ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPhoneCallIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PhoneCallIdType: Id=%@", _id];
}

@end

