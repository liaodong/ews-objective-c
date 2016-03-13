
#import "EWSNonEmptyArrayOfFolderChangesType.h"


@implementation EWSNonEmptyArrayOfFolderChangesType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfFolderChangesType alloc] initWithClass:[EWSNonEmptyArrayOfFolderChangesType class]];

    [handler elementName : @"FolderChange"
             withHandler : [EWSFolderChangeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

