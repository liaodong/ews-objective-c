#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfFoldersType.h"


@implementation EWSArrayOfFoldersType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfFoldersType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfFoldersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfFoldersType:"];
}

@end

