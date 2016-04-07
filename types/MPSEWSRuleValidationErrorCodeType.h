#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: RuleValidationErrorCodeType can be one of the following:
 *       1 ADOperationFailure
 *       2 ConnectedAccountNotFound
 *       3 CreateWithRuleId
 *       4 EmptyValueFound
 *       5 DuplicatedPriority
 *       6 DuplicatedOperationOnTheSameRule
 *       7 FolderDoesNotExist
 *       8 InvalidAddress
 *       9 InvalidDateRange
 *       10 InvalidFolderId
 *       11 InvalidSizeRange
 *       12 InvalidValue
 *       13 MessageClassificationNotFound
 *       14 MissingAction
 *       15 MissingParameter
 *       16 MissingRangeValue
 *       17 NotSettable
 *       18 RecipientDoesNotExist
 *       19 RuleNotFound
 *       20 SizeLessThanZero
 *       21 StringValueTooBig
 *       22 UnsupportedAddress
 *       23 UnexpectedError
 *       24 UnsupportedRule
 */
@interface MPSEWSRuleValidationErrorCodeType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse RuleValidationErrorCodeType */
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
+ (NSString *) ADOperationFailure;
+ (NSString *) ConnectedAccountNotFound;
+ (NSString *) CreateWithRuleId;
+ (NSString *) EmptyValueFound;
+ (NSString *) DuplicatedPriority;
+ (NSString *) DuplicatedOperationOnTheSameRule;
+ (NSString *) FolderDoesNotExist;
+ (NSString *) InvalidAddress;
+ (NSString *) InvalidDateRange;
+ (NSString *) InvalidFolderId;
+ (NSString *) InvalidSizeRange;
+ (NSString *) InvalidValue;
+ (NSString *) MessageClassificationNotFound;
+ (NSString *) MissingAction;
+ (NSString *) MissingParameter;
+ (NSString *) MissingRangeValue;
+ (NSString *) NotSettable;
+ (NSString *) RecipientDoesNotExist;
+ (NSString *) RuleNotFound;
+ (NSString *) SizeLessThanZero;
+ (NSString *) StringValueTooBig;
+ (NSString *) UnsupportedAddress;
+ (NSString *) UnexpectedError;
+ (NSString *) UnsupportedRule;
@end

