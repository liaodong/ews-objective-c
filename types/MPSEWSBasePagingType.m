#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBasePagingType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSBasePagingType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBasePagingType class]];

    [handler property    : @"maxEntriesReturned"
             withAttrTag : @"MaxEntriesReturned"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBasePagingType*) val
{   (void) val;
    if ([val maxEntriesReturned] && ![MPSEWSIntegerTypeHandler isValid:[val maxEntriesReturned]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBasePagingType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BasePagingType: MaxEntriesReturned=%@", _maxEntriesReturned];
}

@end

