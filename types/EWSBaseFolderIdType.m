#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSBaseFolderIdType.h"


@implementation EWSBaseFolderIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseFolderIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBaseFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseFolderIdType:"];
}

@end

