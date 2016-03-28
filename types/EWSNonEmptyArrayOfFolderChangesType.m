#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfFolderChangesType.h"
#import "../types/EWSFolderChangeType.h"


@implementation EWSNonEmptyArrayOfFolderChangesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfFolderChangesType class]];

    [handler listProperty  : @"folderChange"
             isNonEmpty    : TRUE
             useSelector   : @"addFolderChange"
             withNamespace : 't'
             withXmlTag    : @"FolderChange"
             withHandler   : [EWSFolderChangeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfFolderChangesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfFolderChangesType: FolderChange=%@", _folderChange];
}

- (void) addFolderChange:(EWSFolderChangeType*) elem
{
    if (![self folderChange]) {
        [self setFolderChange:[[NSMutableArray<EWSFolderChangeType*> alloc] init]];
    }
    [_folderChange addObject:elem];
}

@end

