#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSResolveNamesResponseType.h"


@implementation EWSResolveNamesResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSResolveNamesResponseType class]];

    [handler property      : @"responseMessages"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessages"
             withHandler   : [EWSArrayOfResponseMessagesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSResolveNamesResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ResolveNamesResponseType: super=%@", [super description]];
}

@end

