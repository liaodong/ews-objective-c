#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: IdFormatType can be one of the following:
 *       1 EwsLegacyId
 *       2 EwsId
 *       3 EntryId
 *       4 HexEntryId
 *       5 StoreId
 *       6 OwaId
 */
@interface EWSIdFormatType : EWSSimpleTypeHandler 

/** Register a handler to parse IdFormatType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) EwsLegacyId;
+ (NSString *) EwsId;
+ (NSString *) EntryId;
+ (NSString *) HexEntryId;
+ (NSString *) StoreId;
+ (NSString *) OwaId;
@end

