#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSTargetFolderIdType.h"


@implementation EWSTargetFolderIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTargetFolderIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSTargetFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TargetFolderIdType:"];
}

@end

