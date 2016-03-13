#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetAttachmentResponseType.h"


@implementation EWSGetAttachmentResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetAttachmentResponseType class]];

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
    return [EWSGetAttachmentResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetAttachmentResponseType: super=%@", [super description]];
}

@end

