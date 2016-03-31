#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfTransitionsType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSTransitionType.h"


@implementation MPSEWSArrayOfTransitionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfTransitionsType class]];

    [handler property    : @"id"
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property      : @"transition"
             withNamespace : 't'
             withXmlTag    : @"Transition"
             withHandler   : [MPSEWSTransitionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfTransitionsType*) val
{   (void) val;
    if ([val id  ] && ![MPSEWSStringTypeHandler isValid:[val id  ]]) return FALSE;
    if ([val transition] && ![MPSEWSTransitionType isValid:[val transition]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfTransitionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfTransitionsType: Id=%@ Transition=%@", _id, _transition];
}

@end

