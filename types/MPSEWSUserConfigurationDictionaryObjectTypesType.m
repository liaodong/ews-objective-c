#import <Foundation/Foundation.h>

#import "MPSEWSUserConfigurationDictionaryObjectTypesType.h"
@implementation MPSEWSUserConfigurationDictionaryObjectTypesType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSUserConfigurationDictionaryObjectTypesType DateTime], 
                                         [MPSEWSUserConfigurationDictionaryObjectTypesType Boolean], 
                                         [MPSEWSUserConfigurationDictionaryObjectTypesType Byte], 
                                         [MPSEWSUserConfigurationDictionaryObjectTypesType String], 
                                         [MPSEWSUserConfigurationDictionaryObjectTypesType Integer32], 
                                         [MPSEWSUserConfigurationDictionaryObjectTypesType UnsignedInteger32], 
                                         [MPSEWSUserConfigurationDictionaryObjectTypesType Integer64], 
                                         [MPSEWSUserConfigurationDictionaryObjectTypesType UnsignedInteger64], 
                                         [MPSEWSUserConfigurationDictionaryObjectTypesType StringArray], 
                                         [MPSEWSUserConfigurationDictionaryObjectTypesType ByteArray], nil];
    [[[MPSEWSUserConfigurationDictionaryObjectTypesType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSUserConfigurationDictionaryObjectTypesType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [enumerations containsObject:s] ? [enumerations member:s] : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    NSAssert([enumerations containsObject:obj], @"String is a enumerated list");
    [buffer appendString:((NSString*) object)];
}

+ (NSString *) DateTime { return @"DateTime"; }
+ (NSString *) Boolean { return @"Boolean"; }
+ (NSString *) Byte { return @"Byte"; }
+ (NSString *) String { return @"String"; }
+ (NSString *) Integer32 { return @"Integer32"; }
+ (NSString *) UnsignedInteger32 { return @"UnsignedInteger32"; }
+ (NSString *) Integer64 { return @"Integer64"; }
+ (NSString *) UnsignedInteger64 { return @"UnsignedInteger64"; }
+ (NSString *) StringArray { return @"StringArray"; }
+ (NSString *) ByteArray { return @"ByteArray"; }
@end

