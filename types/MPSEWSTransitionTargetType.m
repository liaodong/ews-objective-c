#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTransitionTargetType.h"
#import "../types/MPSEWSTransitionTargetKindType.h"


@implementation MPSEWSTransitionTargetType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTransitionTargetType class] andContentHandlerClass:[MPSEWSStringTypeHandler class]];

    [handler property    : @"kind"
             withAttrTag : @"Kind"
             withHandler : [MPSEWSTransitionTargetKindType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSTransitionTargetType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSStringType isValid:val forVersion:ver]) return FALSE;
    if ([val kind] && ![MPSEWSTransitionTargetKindType isValid:[val kind] forVersion: ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTransitionTargetType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TransitionTargetType: Kind=%@ super=%@", _kind, [super description]];
}

@end

