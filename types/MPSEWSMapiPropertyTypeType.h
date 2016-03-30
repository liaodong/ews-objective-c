#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: MapiPropertyTypeType can be one of the following:
 *       1 ApplicationTime
 *       2 ApplicationTimeArray
 *       3 Binary
 *       4 BinaryArray
 *       5 Boolean
 *       6 CLSID
 *       7 CLSIDArray
 *       8 Currency
 *       9 CurrencyArray
 *       10 Double
 *       11 DoubleArray
 *       12 Error
 *       13 Float
 *       14 FloatArray
 *       15 Integer
 *       16 IntegerArray
 *       17 Long
 *       18 LongArray
 *       19 Null
 *       20 Object
 *       21 ObjectArray
 *       22 Short
 *       23 ShortArray
 *       24 SystemTime
 *       25 SystemTimeArray
 *       26 String
 *       27 StringArray
 */
@interface MPSEWSMapiPropertyTypeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse MapiPropertyTypeType */
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
+ (NSString *) ApplicationTime;
+ (NSString *) ApplicationTimeArray;
+ (NSString *) Binary;
+ (NSString *) BinaryArray;
+ (NSString *) Boolean;
+ (NSString *) CLSID;
+ (NSString *) CLSIDArray;
+ (NSString *) Currency;
+ (NSString *) CurrencyArray;
+ (NSString *) Double;
+ (NSString *) DoubleArray;
+ (NSString *) Error;
+ (NSString *) Float;
+ (NSString *) FloatArray;
+ (NSString *) Integer;
+ (NSString *) IntegerArray;
+ (NSString *) Long;
+ (NSString *) LongArray;
+ (NSString *) Null;
+ (NSString *) Object;
+ (NSString *) ObjectArray;
+ (NSString *) Short;
+ (NSString *) ShortArray;
+ (NSString *) SystemTime;
+ (NSString *) SystemTimeArray;
+ (NSString *) String;
+ (NSString *) StringArray;
@end

