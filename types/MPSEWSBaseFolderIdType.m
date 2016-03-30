#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseFolderIdType.h"


@implementation MPSEWSBaseFolderIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseFolderIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseFolderIdType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseFolderIdType:"];
}

@end

