#import <Foundation/Foundation.h>

#import "MPSEWSUserConfigurationPropertyType.h"
@implementation MPSEWSUserConfigurationPropertyType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSUserConfigurationPropertyType Id], 
                                         [MPSEWSUserConfigurationPropertyType Dictionary], 
                                         [MPSEWSUserConfigurationPropertyType XmlData], 
                                         [MPSEWSUserConfigurationPropertyType BinaryData], 
                                         [MPSEWSUserConfigurationPropertyType All], nil];
    [[[MPSEWSUserConfigurationPropertyType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSUserConfigurationPropertyType class] andValues:enumerations];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls andValues:enumerations];
    return self;
}

+ (NSString *) Id { return @"Id"; }
+ (NSString *) Dictionary { return @"Dictionary"; }
+ (NSString *) XmlData { return @"XmlData"; }
+ (NSString *) BinaryData { return @"BinaryData"; }
+ (NSString *) All { return @"All"; }
@end

