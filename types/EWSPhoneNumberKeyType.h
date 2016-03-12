#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: PhoneNumberKeyType can be one of the following:
 *       1 AssistantPhone
 *       2 BusinessFax
 *       3 BusinessPhone
 *       4 BusinessPhone2
 *       5 Callback
 *       6 CarPhone
 *       7 CompanyMainPhone
 *       8 HomeFax
 *       9 HomePhone
 *       10 HomePhone2
 *       11 Isdn
 *       12 MobilePhone
 *       13 OtherFax
 *       14 OtherTelephone
 *       15 Pager
 *       16 PrimaryPhone
 *       17 RadioPhone
 *       18 Telex
 *       19 TtyTddPhone
 */
@interface EWSPhoneNumberKeyType : EWSSimpleTypeHandler 

/** Register a handler to parse PhoneNumberKeyType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) AssistantPhone;
+ (NSString *) BusinessFax;
+ (NSString *) BusinessPhone;
+ (NSString *) BusinessPhone2;
+ (NSString *) Callback;
+ (NSString *) CarPhone;
+ (NSString *) CompanyMainPhone;
+ (NSString *) HomeFax;
+ (NSString *) HomePhone;
+ (NSString *) HomePhone2;
+ (NSString *) Isdn;
+ (NSString *) MobilePhone;
+ (NSString *) OtherFax;
+ (NSString *) OtherTelephone;
+ (NSString *) Pager;
+ (NSString *) PrimaryPhone;
+ (NSString *) RadioPhone;
+ (NSString *) Telex;
+ (NSString *) TtyTddPhone;
@end

