#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfServiceConfigurationResponseMessageType.h"
#import "../messages/MPSEWSServiceConfigurationResponseMessageType.h"


@implementation MPSEWSArrayOfServiceConfigurationResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfServiceConfigurationResponseMessageType class]];

    [handler listProperty  : @"serviceConfigurationResponseMessageType"
             useSelector   : @"addServiceConfigurationResponseMessageType"
             withNamespace : 'm'
             withXmlTag    : @"ServiceConfigurationResponseMessageType"
             withHandler   : [MPSEWSServiceConfigurationResponseMessageType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfServiceConfigurationResponseMessageType*) val
{   (void) val;
    if ([val serviceConfigurationResponseMessageType]) {
        for (MPSEWSServiceConfigurationResponseMessageType* obj in [val serviceConfigurationResponseMessageType]) {
            if (![MPSEWSServiceConfigurationResponseMessageType isValid:obj]) return FALSE;
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
    return [MPSEWSArrayOfServiceConfigurationResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfServiceConfigurationResponseMessageType: ServiceConfigurationResponseMessageType=%@", _serviceConfigurationResponseMessageType];
}

- (void) addServiceConfigurationResponseMessageType:(MPSEWSServiceConfigurationResponseMessageType*) elem
{
    if (![self serviceConfigurationResponseMessageType]) {
        [self setServiceConfigurationResponseMessageType:[[NSMutableArray<MPSEWSServiceConfigurationResponseMessageType*> alloc] init]];
    }
    [_serviceConfigurationResponseMessageType addObject:elem];
}

@end

