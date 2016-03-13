#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSNonEmptyArrayOfFolderChangeDescriptionsType.h"


@implementation EWSNonEmptyArrayOfFolderChangeDescriptionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfFolderChangeDescriptionsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfFolderChangeDescriptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfFolderChangeDescriptionsType:"];
}

@end

