#import <Foundation/Foundation.h>

#import "MPSEWSDictionaryURIType.h"
@implementation MPSEWSDictionaryURIType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSDictionaryURIType item_InternetMessageHeader], 
                                         [MPSEWSDictionaryURIType contacts_ImAddress], 
                                         [MPSEWSDictionaryURIType contacts_PhysicalAddress_Street], 
                                         [MPSEWSDictionaryURIType contacts_PhysicalAddress_City], 
                                         [MPSEWSDictionaryURIType contacts_PhysicalAddress_State], 
                                         [MPSEWSDictionaryURIType contacts_PhysicalAddress_CountryOrRegion], 
                                         [MPSEWSDictionaryURIType contacts_PhysicalAddress_PostalCode], 
                                         [MPSEWSDictionaryURIType contacts_PhoneNumber], 
                                         [MPSEWSDictionaryURIType contacts_EmailAddress], 
                                         [MPSEWSDictionaryURIType distributionlist_Members_Member], nil];
    [[[MPSEWSDictionaryURIType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSDictionaryURIType class]];
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

+ (NSString *) item_InternetMessageHeader { return @"item:InternetMessageHeader"; }
+ (NSString *) contacts_ImAddress { return @"contacts:ImAddress"; }
+ (NSString *) contacts_PhysicalAddress_Street { return @"contacts:PhysicalAddress:Street"; }
+ (NSString *) contacts_PhysicalAddress_City { return @"contacts:PhysicalAddress:City"; }
+ (NSString *) contacts_PhysicalAddress_State { return @"contacts:PhysicalAddress:State"; }
+ (NSString *) contacts_PhysicalAddress_CountryOrRegion { return @"contacts:PhysicalAddress:CountryOrRegion"; }
+ (NSString *) contacts_PhysicalAddress_PostalCode { return @"contacts:PhysicalAddress:PostalCode"; }
+ (NSString *) contacts_PhoneNumber { return @"contacts:PhoneNumber"; }
+ (NSString *) contacts_EmailAddress { return @"contacts:EmailAddress"; }
+ (NSString *) distributionlist_Members_Member { return @"distributionlist:Members:Member"; }
@end

