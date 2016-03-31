#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSEnumeratedListTypeHandler.h"


/** SimpleType: MailTipTypes can be one of the following:
 *       1 All
 *       2 OutOfOfficeMessage
 *       3 MailboxFullStatus
 *       4 CustomMailTip
 *       5 ExternalMemberCount
 *       6 TotalMemberCount
 *       7 MaxMessageSize
 *       8 DeliveryRestriction
 *       9 ModerationStatus
 *       10 InvalidRecipient
 */
@interface MPSEWSMailTipTypes : MPSEWSEnumeratedListTypeHandler 

/** Register a handler to parse MailTipTypes */
+ (void) initialize;
+ (BOOL) isValid:(NSArray<NSString*>*)val;

/** Initialize the handler */
- (id) init;
- (id) initWithClass:(Class) cls;


/* Valid values */
+ (NSString *) All;
+ (NSString *) OutOfOfficeMessage;
+ (NSString *) MailboxFullStatus;
+ (NSString *) CustomMailTip;
+ (NSString *) ExternalMemberCount;
+ (NSString *) TotalMemberCount;
+ (NSString *) MaxMessageSize;
+ (NSString *) DeliveryRestriction;
+ (NSString *) ModerationStatus;
+ (NSString *) InvalidRecipient;
@end

