#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfFolderNamesType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSNonEmptyArrayOfFolderNamesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfFolderNamesType class]];

    [handler listProperty  : @"folderName"
             useSelector   : @"addFolderName"
             withNamespace : 't'
             withXmlTag    : @"FolderName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfFolderNamesType class];
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

