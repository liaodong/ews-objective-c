#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfGroupIdentifiersType.h"
#import "../types/MPSEWSSidAndAttributesType.h"


@implementation MPSEWSNonEmptyArrayOfGroupIdentifiersType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfGroupIdentifiersType class]];

    [handler listProperty  : @"groupIdentifier"
             useSelector   : @"addGroupIdentifier"
             withNamespace : 't'
             withXmlTag    : @"GroupIdentifier"
             withHandler   : [MPSEWSSidAndAttributesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfGroupIdentifiersType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val groupIdentifier]) {
        for (MPSEWSSidAndAttributesType* obj in [val groupIdentifier]) {
            if (![MPSEWSSidAndAttributesType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfGroupIdentifiersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfGroupIdentifiersType: GroupIdentifier=%@", _groupIdentifier];
}

- (void) addGroupIdentifier:(MPSEWSSidAndAttributesType*) elem
{
    if (![self groupIdentifier]) {
        [self setGroupIdentifier:[[NSMutableArray<MPSEWSSidAndAttributesType*> alloc] init]];
    }
    [_groupIdentifier addObject:elem];
}

@end

