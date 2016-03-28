#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfFolderNamesType.h"
#import "../handlers/EWSStringTypeHandler.h"


@implementation EWSNonEmptyArrayOfFolderNamesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfFolderNamesType class]];

    [handler listProperty  : @"folderName"
             isNonEmpty    : TRUE
             useSelector   : @"addFolderName"
             withNamespace : 't'
             withXmlTag    : @"FolderName"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfFolderNamesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfFolderNamesType: FolderName=%@", _folderName];
}

- (void) addFolderName:(NSString*) elem
{
    if (![self folderName]) {
        [self setFolderName:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_folderName addObject:elem];
}

@end

