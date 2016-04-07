#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: DictionaryURIType can be one of the following:
 *       1 item:InternetMessageHeader
 *       2 contacts:ImAddress
 *       3 contacts:PhysicalAddress:Street
 *       4 contacts:PhysicalAddress:City
 *       5 contacts:PhysicalAddress:State
 *       6 contacts:PhysicalAddress:CountryOrRegion
 *       7 contacts:PhysicalAddress:PostalCode
 *       8 contacts:PhoneNumber
 *       9 contacts:EmailAddress
 *       10 distributionlist:Members:Member
 */
@interface MPSEWSDictionaryURIType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse DictionaryURIType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val forVersion:(MPSEWSExchangeVersion) ver;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) item_InternetMessageHeader;
+ (NSString *) contacts_ImAddress;
+ (NSString *) contacts_PhysicalAddress_Street;
+ (NSString *) contacts_PhysicalAddress_City;
+ (NSString *) contacts_PhysicalAddress_State;
+ (NSString *) contacts_PhysicalAddress_CountryOrRegion;
+ (NSString *) contacts_PhysicalAddress_PostalCode;
+ (NSString *) contacts_PhoneNumber;
+ (NSString *) contacts_EmailAddress;
+ (NSString *) distributionlist_Members_Member;
@end

