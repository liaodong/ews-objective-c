#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfFolderChangesType.h"
#import "../types/MPSEWSFolderChangeType.h"


@implementation MPSEWSNonEmptyArrayOfFolderChangesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfFolderChangesType class]];

    [handler listProperty  : @"folderChange"
             useSelector   : @"addFolderChange"
             withNamespace : 't'
             withXmlTag    : @"FolderChange"
             withHandler   : [MPSEWSFolderChangeType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfFolderChangesType*) val
{   (void) val;
    if ([val folderChange]) {
        for (MPSEWSFolderChangeType* obj in [val folderChange]) {
            if (![MPSEWSFolderChangeType isValid:obj]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfFolderChangesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfFolderChangesType: FolderChange=%@", _folderChange];
}

- (void) addFolderChange:(MPSEWSFolderChangeType*) elem
{
    if (![self folderChange]) {
        [self setFolderChange:[[NSMutableArray<MPSEWSFolderChangeType*> alloc] init]];
    }
    [_folderChange addObject:elem];
}

@end

