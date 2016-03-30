#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType.h"
#import "../types/MPSEWSSidAndAttributesType.h"


@implementation MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType class]];

    [handler listProperty  : @"restrictedGroupIdentifier"
             useSelector   : @"addRestrictedGroupIdentifier"
             withNamespace : 't'
             withXmlTag    : @"RestrictedGroupIdentifier"
             withHandler   : [MPSEWSSidAndAttributesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType*) val
{   (void) val;
    if ([val restrictedGroupIdentifier]) {
        for (MPSEWSSidAndAttributesType* obj in [val restrictedGroupIdentifier]) {
            if (![MPSEWSSidAndAttributesType isValid:obj]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfRestrictedGroupIdentifiersType: RestrictedGroupIdentifier=%@", _restrictedGroupIdentifier];
}

- (void) addRestrictedGroupIdentifier:(MPSEWSSidAndAttributesType*) elem
{
    if (![self restrictedGroupIdentifier]) {
        [self setRestrictedGroupIdentifier:[[NSMutableArray<MPSEWSSidAndAttributesType*> alloc] init]];
    }
    [_restrictedGroupIdentifier addObject:elem];
}

@end

