#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfInvalidRecipientsType.h"
#import "../types/MPSEWSInvalidRecipientType.h"


@implementation MPSEWSArrayOfInvalidRecipientsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfInvalidRecipientsType class]];

    [handler listProperty  : @"invalidRecipient"
             useSelector   : @"addInvalidRecipient"
             withNamespace : 't'
             withXmlTag    : @"InvalidRecipient"
             withHandler   : [MPSEWSInvalidRecipientType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfInvalidRecipientsType*) val
{   (void) val;
    if ([val invalidRecipient]) {
        for (MPSEWSInvalidRecipientType* obj in [val invalidRecipient]) {
            if (![MPSEWSInvalidRecipientType isValid:obj]) return FALSE;
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
    return [MPSEWSArrayOfInvalidRecipientsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfInvalidRecipientsType: InvalidRecipient=%@", _invalidRecipient];
}

- (void) addInvalidRecipient:(MPSEWSInvalidRecipientType*) elem
{
    if (![self invalidRecipient]) {
        [self setInvalidRecipient:[[NSMutableArray<MPSEWSInvalidRecipientType*> alloc] init]];
    }
    [_invalidRecipient addObject:elem];
}

@end

