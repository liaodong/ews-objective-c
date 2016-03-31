#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfServiceConfigurationType.h"
#import "../types/MPSEWSServiceConfigurationType.h"


@implementation MPSEWSArrayOfServiceConfigurationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfServiceConfigurationType class]];

    [handler listProperty  : @"configurationName"
             useSelector   : @"addConfigurationName"
             withNamespace : 'm'
             withXmlTag    : @"ConfigurationName"
             withHandler   : [MPSEWSServiceConfigurationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfServiceConfigurationType*) val
{   (void) val;
    if ([val configurationName]) {
        for (NSMutableArray<NSString*>* obj in [val configurationName]) {
            if (![MPSEWSServiceConfigurationType isValid:obj]) return FALSE;
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
    return [MPSEWSArrayOfServiceConfigurationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfServiceConfigurationType: ConfigurationName=%@", _configurationName];
}

- (void) addConfigurationName:(NSMutableArray<NSString*>*) elem
{
    if (![self configurationName]) {
        [self setConfigurationName:[[NSMutableArray<NSMutableArray<NSString*>*> alloc] init]];
    }
    [_configurationName addObject:elem];
}

@end

