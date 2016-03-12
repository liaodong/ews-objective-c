#import <Foundation/Foundation.h>

#import "EWSDictionaryURIType.h"
@implementation EWSDictionaryURIType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSDictionaryURIType item_InternetMessageHeader], 
                                         [EWSDictionaryURIType contacts_ImAddress], 
                                         [EWSDictionaryURIType contacts_PhysicalAddress_Street], 
                                         [EWSDictionaryURIType contacts_PhysicalAddress_City], 
                                         [EWSDictionaryURIType contacts_PhysicalAddress_State], 
                                         [EWSDictionaryURIType contacts_PhysicalAddress_CountryOrRegion], 
                                         [EWSDictionaryURIType contacts_PhysicalAddress_PostalCode], 
                                         [EWSDictionaryURIType contacts_PhoneNumber], 
                                         [EWSDictionaryURIType contacts_EmailAddress], nil];
    [[[EWSDictionaryURIType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSDictionaryURIType class]];
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
@end

