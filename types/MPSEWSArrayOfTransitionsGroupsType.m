#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfTransitionsGroupsType.h"
#import "../types/MPSEWSArrayOfTransitionsType.h"


@implementation MPSEWSArrayOfTransitionsGroupsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfTransitionsGroupsType class]];

    [handler listProperty  : @"transitionsGroup"
             useSelector   : @"addTransitionsGroup"
             withNamespace : 't'
             withXmlTag    : @"TransitionsGroup"
             withHandler   : [MPSEWSArrayOfTransitionsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfTransitionsGroupsType*) val
{   (void) val;
    if ([val transitionsGroup]) {
        for (MPSEWSArrayOfTransitionsType* obj in [val transitionsGroup]) {
            if (![MPSEWSArrayOfTransitionsType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfTransitionsGroupsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfTransitionsGroupsType: TransitionsGroup=%@", _transitionsGroup];
}

- (void) addTransitionsGroup:(MPSEWSArrayOfTransitionsType*) elem
{
    if (![self transitionsGroup]) {
        [self setTransitionsGroup:[[NSMutableArray<MPSEWSArrayOfTransitionsType*> alloc] init]];
    }
    [_transitionsGroup addObject:elem];
}

@end

