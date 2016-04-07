#import <Foundation/Foundation.h>

#import "MPSEWSMapiPropertyTypeType.h"
@implementation MPSEWSMapiPropertyTypeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSMapiPropertyTypeType ApplicationTime], 
                                         [MPSEWSMapiPropertyTypeType ApplicationTimeArray], 
                                         [MPSEWSMapiPropertyTypeType Binary], 
                                         [MPSEWSMapiPropertyTypeType BinaryArray], 
                                         [MPSEWSMapiPropertyTypeType Boolean], 
                                         [MPSEWSMapiPropertyTypeType CLSID], 
                                         [MPSEWSMapiPropertyTypeType CLSIDArray], 
                                         [MPSEWSMapiPropertyTypeType Currency], 
                                         [MPSEWSMapiPropertyTypeType CurrencyArray], 
                                         [MPSEWSMapiPropertyTypeType Double], 
                                         [MPSEWSMapiPropertyTypeType DoubleArray], 
                                         [MPSEWSMapiPropertyTypeType Error], 
                                         [MPSEWSMapiPropertyTypeType Float], 
                                         [MPSEWSMapiPropertyTypeType FloatArray], 
                                         [MPSEWSMapiPropertyTypeType Integer], 
                                         [MPSEWSMapiPropertyTypeType IntegerArray], 
                                         [MPSEWSMapiPropertyTypeType Long], 
                                         [MPSEWSMapiPropertyTypeType LongArray], 
                                         [MPSEWSMapiPropertyTypeType Null], 
                                         [MPSEWSMapiPropertyTypeType Object], 
                                         [MPSEWSMapiPropertyTypeType ObjectArray], 
                                         [MPSEWSMapiPropertyTypeType Short], 
                                         [MPSEWSMapiPropertyTypeType ShortArray], 
                                         [MPSEWSMapiPropertyTypeType SystemTime], 
                                         [MPSEWSMapiPropertyTypeType SystemTimeArray], 
                                         [MPSEWSMapiPropertyTypeType String], 
                                         [MPSEWSMapiPropertyTypeType StringArray], nil];
    [[[MPSEWSMapiPropertyTypeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSMapiPropertyTypeType class]];
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

+ (NSString *) ApplicationTime { return @"ApplicationTime"; }
+ (NSString *) ApplicationTimeArray { return @"ApplicationTimeArray"; }
+ (NSString *) Binary { return @"Binary"; }
+ (NSString *) BinaryArray { return @"BinaryArray"; }
+ (NSString *) Boolean { return @"Boolean"; }
+ (NSString *) CLSID { return @"CLSID"; }
+ (NSString *) CLSIDArray { return @"CLSIDArray"; }
+ (NSString *) Currency { return @"Currency"; }
+ (NSString *) CurrencyArray { return @"CurrencyArray"; }
+ (NSString *) Double { return @"Double"; }
+ (NSString *) DoubleArray { return @"DoubleArray"; }
+ (NSString *) Error { return @"Error"; }
+ (NSString *) Float { return @"Float"; }
+ (NSString *) FloatArray { return @"FloatArray"; }
+ (NSString *) Integer { return @"Integer"; }
+ (NSString *) IntegerArray { return @"IntegerArray"; }
+ (NSString *) Long { return @"Long"; }
+ (NSString *) LongArray { return @"LongArray"; }
+ (NSString *) Null { return @"Null"; }
+ (NSString *) Object { return @"Object"; }
+ (NSString *) ObjectArray { return @"ObjectArray"; }
+ (NSString *) Short { return @"Short"; }
+ (NSString *) ShortArray { return @"ShortArray"; }
+ (NSString *) SystemTime { return @"SystemTime"; }
+ (NSString *) SystemTimeArray { return @"SystemTimeArray"; }
+ (NSString *) String { return @"String"; }
+ (NSString *) StringArray { return @"StringArray"; }
@end

