#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSConvertIdResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSConvertIdResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSConvertIdResponseType class]];

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
    return [EWSConvertIdResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ConvertIdResponseType: super=%@", [super description]];
}

@end

