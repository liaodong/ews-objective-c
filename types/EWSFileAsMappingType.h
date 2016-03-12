#import <Foundation/Foundation.h>

#import "../handlers/EWSSimpleTypeHandler.h"


/** SimpleType: FileAsMappingType can be one of the following:
 *       1 None
 *       2 LastCommaFirst
 *       3 FirstSpaceLast
 *       4 Company
 *       5 LastCommaFirstCompany
 *       6 CompanyLastFirst
 *       7 LastFirst
 *       8 LastFirstCompany
 *       9 CompanyLastCommaFirst
 *       10 LastFirstSuffix
 *       11 LastSpaceFirstCompany
 *       12 CompanyLastSpaceFirst
 *       13 LastSpaceFirst
 */
@interface EWSFileAsMappingType : EWSSimpleTypeHandler 

/** Register a handler to parse FileAsMappingType */
+ (void) initialize;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;

/** Process the characters */
- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*)s;

/** Write to the buffer the string value */
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object;


/* Valid values */
+ (NSString *) None;
+ (NSString *) LastCommaFirst;
+ (NSString *) FirstSpaceLast;
+ (NSString *) Company;
+ (NSString *) LastCommaFirstCompany;
+ (NSString *) CompanyLastFirst;
+ (NSString *) LastFirst;
+ (NSString *) LastFirstCompany;
+ (NSString *) CompanyLastCommaFirst;
+ (NSString *) LastFirstSuffix;
+ (NSString *) LastSpaceFirstCompany;
+ (NSString *) CompanyLastSpaceFirst;
+ (NSString *) LastSpaceFirst;
@end

