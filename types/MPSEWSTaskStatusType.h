#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSSimpleTypeHandler.h"


/** SimpleType: TaskStatusType can be one of the following:
 *       1 NotStarted
 *       2 InProgress
 *       3 Completed
 *       4 WaitingOnOthers
 *       5 Deferred
 */
@interface MPSEWSTaskStatusType : MPSEWSSimpleTypeHandler 

/** Register a handler to parse TaskStatusType */
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
+ (NSString *) NotStarted;
+ (NSString *) InProgress;
+ (NSString *) Completed;
+ (NSString *) WaitingOnOthers;
+ (NSString *) Deferred;
@end

