
#import "EWSNonEmptyArrayOfFolderNamesType.h"


@implementation EWSNonEmptyArrayOfFolderNamesType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfFolderNamesType alloc] initWithClass:[EWSNonEmptyArrayOfFolderNamesType class]];

    [handler elementName   : @"FolderName"
             withNamespace : 't'             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

