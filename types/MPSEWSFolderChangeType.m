#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFolderChangeType.h"
#import "../types/MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType.h"


@implementation MPSEWSFolderChangeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFolderChangeType class]];

    [handler property      : @"updates"
             withNamespace : 't'
             withXmlTag    : @"Updates"
             withHandler   : [MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFolderChangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FolderChangeType: Updates=%@", _updates];
}

@end

