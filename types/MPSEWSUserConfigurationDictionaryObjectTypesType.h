#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: UserConfigurationDictionaryObjectTypesType can be one of the following:
 *       1 DateTime
 *       2 Boolean
 *       3 Byte
 *       4 String
 *       5 Integer32
 *       6 UnsignedInteger32
 *       7 Integer64
 *       8 UnsignedInteger64
 *       9 StringArray
 *       10 ByteArray
 */
@interface MPSEWSUserConfigurationDictionaryObjectTypesType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse UserConfigurationDictionaryObjectTypesType */
+ (void) initialize;
+ (BOOL) isValid:(NSString*)val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) DateTime;
+ (NSString *) Boolean;
+ (NSString *) Byte;
+ (NSString *) String;
+ (NSString *) Integer32;
+ (NSString *) UnsignedInteger32;
+ (NSString *) Integer64;
+ (NSString *) UnsignedInteger64;
+ (NSString *) StringArray;
+ (NSString *) ByteArray;
@end

