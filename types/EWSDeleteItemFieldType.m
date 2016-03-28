#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDeleteItemFieldType.h"
#import "../types/EWSBasePathToElementType.h"


@implementation EWSDeleteItemFieldType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDeleteItemFieldType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [EWSBasePathToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSDeleteItemFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteItemFieldType: super=%@", [super description]];
}

@end

