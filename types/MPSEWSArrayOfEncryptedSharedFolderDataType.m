#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfEncryptedSharedFolderDataType.h"
#import "../types/MPSEWSEncryptedSharedFolderDataType.h"


@implementation MPSEWSArrayOfEncryptedSharedFolderDataType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfEncryptedSharedFolderDataType class]];

    [handler listProperty  : @"encryptedSharedFolderData"
             useSelector   : @"addEncryptedSharedFolderData"
             withNamespace : 't'
             withXmlTag    : @"EncryptedSharedFolderData"
             withHandler   : [MPSEWSEncryptedSharedFolderDataType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfEncryptedSharedFolderDataType*) val
{   (void) val;
    if ([val encryptedSharedFolderData]) {
        for (MPSEWSEncryptedSharedFolderDataType* obj in [val encryptedSharedFolderData]) {
            if (![MPSEWSEncryptedSharedFolderDataType isValid:obj]) return FALSE;
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
    return [MPSEWSArrayOfEncryptedSharedFolderDataType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfEncryptedSharedFolderDataType: EncryptedSharedFolderData=%@", _encryptedSharedFolderData];
}

- (void) addEncryptedSharedFolderData:(MPSEWSEncryptedSharedFolderDataType*) elem
{
    if (![self encryptedSharedFolderData]) {
        [self setEncryptedSharedFolderData:[[NSMutableArray<MPSEWSEncryptedSharedFolderDataType*> alloc] init]];
    }
    [_encryptedSharedFolderData addObject:elem];
}

@end

