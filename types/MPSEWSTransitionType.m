#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTransitionType.h"
#import "../types/MPSEWSTransitionTargetType.h"


@implementation MPSEWSTransitionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTransitionType class]];

    [handler property      : @"to"
             withNamespace : 't'
             withXmlTag    : @"To"
             withHandler   : [MPSEWSTransitionTargetType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSTransitionType*) val
{   (void) val;
    if ([val to  ] && ![MPSEWSTransitionTargetType isValid:[val to  ]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTransitionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TransitionType: To=%@", _to];
}

@end

