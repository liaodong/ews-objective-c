#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSEnumeratedListTypeHandler.h"


/** SimpleType: UserConfigurationPropertyType can be one of the following:
 *       1 Id
 *       2 Dictionary
 *       3 XmlData
 *       4 BinaryData
 *       5 All
 */
@interface MPSEWSUserConfigurationPropertyType : MPSEWSEnumeratedListTypeHandler 

/** Register a handler to parse UserConfigurationPropertyType */
+ (void) initialize;
+ (BOOL) isValid:(NSArray<NSString*>*)val forVersion:(MPSEWSExchangeVersion) ver;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;


/* Valid values */
+ (NSString *) Id;
+ (NSString *) Dictionary;
+ (NSString *) XmlData;
+ (NSString *) BinaryData;
+ (NSString *) All;
@end

