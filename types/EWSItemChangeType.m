#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSItemChangeType.h"
#import "../types/EWSNonEmptyArrayOfItemChangeDescriptionsType.h"


@implementation EWSItemChangeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSItemChangeType class]];

    [handler property      : @"updates"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Updates"
             withHandler   : [EWSNonEmptyArrayOfItemChangeDescriptionsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSItemChangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ItemChangeType: Updates=%@", _updates];
}

@end

